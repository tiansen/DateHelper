package com.teamwork.action;

import java.io.*;
import java.util.*;
import java.util.Date;

import javax.annotation.Resource;
import net.sf.json.JSONObject;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionContext;
import com.teamwork.entity.*;
import com.teamwork.service.UserService;
import com.teamwork.smartupload.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.HttpServletRequest;

@Controller("userAction")
@Scope("prototype")
public class UserAction {
	// 使用Spring的注解，为类的成员变量赋值
	@Resource
	private UserService userService;
	private String pagePath = null; // 根据Struts 2的配置，跳转指定路径
	private User user;// 收集页面用户对象的数据
	private HttpServletRequest request = ServletActionContext.getRequest();
	HttpServletResponse response = ServletActionContext.getResponse();
	HttpSession session = ServletActionContext.getRequest().getSession();
	private List<File> file;
	private List<String> fileFileName;
	private List<String> fileContentType;
	private List<String> dataUrl;

	/**
	 * 上传文件
	 * 
	 * @return
	 */
	public String uploadFile()throws Exception {
		System.out.println("OK:"+file.size());
		dataUrl = new ArrayList<String>();
		String imgpath = "head/";
		for (int i = 0; i < file.size(); ++i) {
			InputStream is = new FileInputStream(file.get(i));

			String path = ServletActionContext.getServletContext().getRealPath(
					"/");
			System.out.println(path);
			dataUrl.add(imgpath + this.getFileFileName().get(i));
			File destFile = new File(path + imgpath, this.getFileFileName()
					.get(i));
			OutputStream os = new FileOutputStream(destFile);
			byte[] buffer = new byte[400];
			int length = 0;
			while ((length = is.read(buffer)) > 0) {
				os.write(buffer, 0, length);
			}
			is.close();
			os.close();
		}
		this.pagePath = "./success.jsp";
		return "pagePath";
	}

	/**
	 * 用户登录
	 * 
	 * @return
	 */
	public String userLogin() {
		int ID = this.user.getUserId();
		String password = this.user.getPassWord();
		List list = userService.userLogin(ID, password);
		if (list.size() <= 0) {
			ActionContext.getContext().put("message", "您的用户名或密码错误。");// 向页面输出信息
			this.pagePath = "/user/userLogin.jsp";
			return "pagePath";// struts里面配置的name，不要与this.pagePath弄混淆
		} else {
			User u = (User) list.get(0);
			session.setAttribute("user", u);
			if (u.getRole() == 2) {
				this.pagePath = "./admin/adminpage.jsp";
			} else {
				this.pagePath = "./user/userPage.jsp";
			}
			return "pagePath";
		}

	}

	/**
	 * 添加用户（保存用户数据）
	 * 
	 * @return
	 */
	public String addUser() {

		// Calendar c = Calendar.getInstance();
		// String str = c.get(Calendar.YEAR) + "-" + (c.get(Calendar.MONTH)) +
		// "-"
		// + c.get(Calendar.DAY_OF_MONTH);
		// 获取注册时间
		Date d = new Date();
//		java.sql.Date sd = new java.sql.Date(d.getTime());
		user.setRegTime(d);
		user.setRole(0);
		user.setAccount(0.0);
		user.setImage("imgs/rabbit.png");
		this.userService.addUser(user);
		// 添加完之后user已经有了ID属性。。。
		System.out.println("注册的ID：" + user.getUserId());
		ActionContext.getContext().put("message", user.getUserId());
		this.pagePath = "./user/regSuccess.jsp";
		return "pagePath";
		// this.pagePath="userAction!findUser";
		// return "addUser";
	}

	/**
	 * 用户注册后查询编号
	 * 
	 * @return
	 */
	public String findNum() {
		// 怎么会获取到的ID？
		int ID = this.user.getUserId();
		System.out.println("注册的ID：" + ID);
		String password = this.user.getPassWord();
		String pagePath = null;
		List list = userService.userLogin(ID, password);
		if (list.size() <= 0) {
			pagePath = "/index.jsp";
			return "pagePath";// struts里面配置的name，不要与this.pagePath弄混淆
		} else {
			User u = (User) list.get(0);
			ActionContext.getContext().put("message", u.getUserId());
			pagePath = "./user/regSuccess.jsp";
			return pagePath;
		}

	}

	/**
	 * 查询用户
	 * 
	 * @return
	 */
	public String findAllUser() {
		int sign = 0;
		int offset = 0;// 起始行数
		int line = 6;// 每页显示的行数
		if (request.getParameter("offset") != null) {
			offset = Integer.parseInt(request.getParameter("offset"));
		}
		if (request.getParameter("sign") != null) {
			sign = Integer.parseInt(request.getParameter("sign"));
		}

		PageModel model = this.userService.findUser(offset, line, sign);

		session.setAttribute("model", model);

		System.out.println("sign:" + sign);
		if (sign == 1) {
			PageModel model_service = this.userService.findAllService(0, 100);
			ActionContext.getContext().put("model_service", model_service);
			pagePath = "./admin/fuwutuisong.jsp";
		} else {
			pagePath = "./admin/userinfo.jsp";
		}
		return "pagePath";
	}

	/**
	 * 删除用户信息
	 * 
	 * @return
	 */
	public String deleteUser() {
		int id = Integer.parseInt(request.getParameter("id").toString());
		this.userService.deleteUser(id);
		pagePath = "./admin/userinfo.jsp";
		return "pagePath";
	}

	/**
	 * 根据ID查询用户信息
	 * 
	 * @return
	 */
	public String findUserById() {
		System.out.println(request.getParameter("id"));
		int id = Integer.parseInt(request.getParameter("id").toString());
		User u = this.userService.getUserByID(id);
		ActionContext.getContext().put("userById", u);
		pagePath = "./admin/anguserinfo.jsp";
		return "pagePath";
	}

	/**
	 * 用户充值
	 * 
	 * @return
	 */
	public String updateUserRole() {
		User user_role = (User) session.getAttribute("user");
		System.out.println(user_role);
		// session.removeAttribute("user");
		user_role.setRole(1);
		user_role.setAccount(100.0);
		// session.setAttribute("user", user);
		this.userService.updateUser(user_role);
		this.pagePath = "./user/userPage.jsp";
		return "pagePath";
	}
	/**
	 * 按条件筛选用户
	 * 
	 * @return
	 */
	public String findRightUser() {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		//创建输出对象
		PrintWriter writer = null;
		try {
			writer = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int id = Integer.parseInt(request.getParameter("id"));
		int sex = Integer.parseInt(request.getParameter("sex"));
		//开始分页查询
		int sign = 0;
		int offset = 0;// 起始行数
		int line = 6;// 每页显示的行数
		if (request.getParameter("offset") != null) {
			offset = Integer.parseInt(request.getParameter("offset"));
		}
		if (request.getParameter("sign") != null) {
			sign = Integer.parseInt(request.getParameter("sign"));
		}

		PageModel model = this.userService.findRightUser(offset, line, sign, id, sex);
		//创建JSON对象
		JSONObject json = new JSONObject();

			json.put("result",model);
			writer.print(json.toString());
			System.out.println(json.toString());
			writer.flush();
			writer.close();
//		response.setContentType("text/html");
//		response.setCharacterEncoding("UTF-8"); 
//		PrintWriter writer = null;
//		try {
//			writer = response.getWriter();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		JSONObject object = new JSONObject();
//		object.clear();
//		object.accumulate("result","1");
//		System.out.println(object.toString());
//		writer.flush();
//		writer.close();
//		int id = Integer.parseInt(request.getParameter("id"));
//		int sex = Integer.parseInt(request.getParameter("sex"));
//		//开始分页查询
//		int sign = 0;
//		int offset = 0;// 起始行数
//		int line = 6;// 每页显示的行数
//		if (request.getParameter("offset") != null) {
//			offset = Integer.parseInt(request.getParameter("offset"));
//		}
//		if (request.getParameter("sign") != null) {
//			sign = Integer.parseInt(request.getParameter("sign"));
//		}
//
//		PageModel model = this.userService.findRightUser(offset, line, sign, id, sex);
//		System.out.println("查询成功");
//		//
		//创建JSON对象
			this.pagePath = "./admin/fuwutuisong.jsp";
			return "pagePath";
	}
	/**
	 * hs修改于2015/3/16
	 * 修改会员资料
	 * @return
	 */
	public String updateUser()throws Exception {
		User Userifo = (User) session.getAttribute("user");
		Userifo.setUserName(user.getUserName());//会员名
		Userifo.setSex(user.getSex());//性别
		Userifo.setAddress(user.getAddress());//居住地
		Userifo.setEmail(user.getEmail());//电子邮件
		Userifo.setMobile(user.getMobile());//电话
		Userifo.setRealName(user.getRealName());//真名
		Userifo.setMaritalStatus(user.getMaritalStatus());//婚姻状况
		Userifo.setAge(user.getAge());//年龄
		dataUrl = new ArrayList<String>();
		String imgpath = "head/";
		for (int i = 0; i < file.size(); ++i) {
			InputStream is = new FileInputStream(file.get(i));

			String path = ServletActionContext.getServletContext().getRealPath(
					"/");
			System.out.println(path);
			dataUrl.add(imgpath + this.getFileFileName().get(i));
			File destFile = new File(path + imgpath, this.getFileFileName()
					.get(i));
			OutputStream os = new FileOutputStream(destFile);
			byte[] buffer = new byte[400];
			int length = 0;
			while ((length = is.read(buffer)) > 0) {
				os.write(buffer, 0, length);
			}
			is.close();
			os.close();
		}
		Userifo.setImage(imgpath+this.getFileFileName().get(0));//头像
		this.userService.updateUser(Userifo);
		this.pagePath = "./user/userPage.jsp";
		return "pagePath";
	}

	/*
	 * 对接受以及要传输的数据进行赋值
	 */
	public String getPagePath() {
		return pagePath;
	}

	public void setPagePath(String pagePath) {
		this.pagePath = pagePath;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<File> getFile() {
		return file;
	}

	public List<String> getDataUrl() {
		return dataUrl;
	}

	public void setDataUrl(List<String> dataUrl) {
		this.dataUrl = dataUrl;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}

	public List<String> getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}

}
