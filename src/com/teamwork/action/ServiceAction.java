package com.teamwork.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.*;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionContext;
import com.teamwork.entity.*;
import com.teamwork.service.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.HttpServletRequest;

@Controller("ServiceAction")
@Scope("prototype")
public class ServiceAction {
	// 使用Spring的注解，为类的成员变量赋值
	@Resource
	private ServiceService serviceService;
	private String pagePath = null; // 根据Struts 2的配置，跳转指定路径
	private User user;// 收集页面用户对象的数据
	private Service service;// 收集页面用户对象的数据
	private HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = ServletActionContext.getRequest().getSession();
	private List<File> file;
	private List<String> fileFileName;
	private List<String> fileContentType;
	private List<String> dataUrl;

	//
//	/**
//	 * 用户登录
//	 * 
//	 * @return
//	 */
//	public String userLogin() {
//		int ID = this.user.getUserId();
//		String password = this.user.getPassWord();
//		List list = userService.userLogin(ID, password);
//		if (list.size() <= 0) {
//			System.out.println("OK");
//			ActionContext.getContext().put("message", "您的用户名或密码错误。");// 向页面输出信息
//			this.pagePath = "/user/userLogin.jsp";
//			return "pagePath";// struts里面配置的name，不要与this.pagePath弄混淆
//		} else {
//			User u = (User) list.get(0);
//			// 向前台传递数据
//			// session
//
//			session.setAttribute("user", u);
//			// request
//			// request.setAttribute("",);
//			if (u.getRole() == 2) {
//				this.pagePath = "./admin/adminpage.jsp";
//			} else {
//				this.pagePath = "./user/userPage.jsp";
//			}
//			return "pagePath";
//		}
//
//	}
//
//	/**
//	 * 添加用户（保存用户数据）
//	 * 
//	 * @return
//	 */
//	public String addUser() {
//
//		Calendar c = Calendar.getInstance();
//		String str = c.get(Calendar.YEAR) + "-" + (c.get(Calendar.MONTH)) + "-"
//				+ c.get(Calendar.DAY_OF_MONTH);
//		//user.setRegTime(str);
//		this.userService.addUser(user);
//		//添加完之后user已经有了ID属性。。。
//		System.out.println("注册的ID："+user.getUserId());
//		ActionContext.getContext().put("message", user.getUserId());
//		this.pagePath = "./user/regSuccess.jsp";
//		return "pagePath";
//		// this.pagePath="userAction!findUser";
//		// return "addUser";
//	}
//
//	/**
//	 * 用户注册后查询编号
//	 * 
//	 * @return
//	 */
//	public String findNum() {
//		//怎么会获取到的ID？
//		int ID = this.user.getUserId();
//		System.out.println("注册的ID："+ID);
//		String password = this.user.getPassWord();
//		String pagePath = null;
//		List list = userService.userLogin(ID, password);
//		if (list.size() <= 0) {
//			pagePath = "/index.jsp";
//			return "pagePath";// struts里面配置的name，不要与this.pagePath弄混淆
//		} else {
//			User u = (User) list.get(0);
//			ActionContext.getContext().put("message", u.getUserId());
//			pagePath = "./user/regSuccess.jsp";
//			return pagePath;
//		}
//
//	}
//
	/**
	 * 查询所有服务
	 * 
	 * @return
	 */
	public String findAllService() {
		System.out.println("OK");
		int sign = 0;
		if(request.getParameter("sign")!=null){
		sign = Integer.parseInt(request.getParameter("sign"));
		}
		System.out.println("标志位："+sign);
		int offset = 0;// 起始行数
		int line = 0;
		if(sign==1){
			line = 3;// 每页显示的行数，用户界面每页只显示3个
		}else{
			line = 6;// 每页显示的行数，管理员也面每页显示的数目
		}
		
		if (request.getParameter("offset") != null) {
			offset = Integer.parseInt(request.getParameter("offset"));
		}
		PageModel model = this.serviceService.findAllService(offset, line);
		ActionContext.getContext().put("model_service", model);
		if (sign==1) {
			pagePath = "./user/fuwujieshao.jsp";
		} else {
			pagePath = "./admin/manageservice.jsp";
		}
		
		return "pagePath";
	}

	/**
	 * 删除服务信息并重置session，再次查询一次。
	 * 
	 * @return
	 */
	public String deleteService() {
		int id = Integer.parseInt(request.getParameter("id").toString());
		this.serviceService.deleteService(id);
		session.removeAttribute("model_service");
		findAllService();
		pagePath = "./admin/manageservice.jsp";
		return "pagePath";
	}
	/**
	 * 根据ID查询服务信息
	 * 
	 * @return
	 */
	public String findServiceById() {
		System.out.println(request.getParameter("id"));
		int id = Integer.parseInt(request.getParameter("id").toString());
		Service s = this.serviceService.getServiceByID(id);
		ActionContext.getContext().put("serviceById", s);
		pagePath = "./admin/sigleservice.jsp";
		return "pagePath";
	}

	/**
	 * 添加服务
	 * 
	 * @return
	 */
	public String addService()throws Exception{
		dataUrl = new ArrayList<String>();
		String imgpath = "serimgs/";
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
		System.out.println(imgpath+this.getFileFileName().get(0));
		service.setImage(imgpath+this.getFileFileName().get(0));//写入图像地址
		serviceService.addService(service);
		pagePath = "./admin/adminpage.jsp";
		return "pagePath";
	}
	/**
	 * 跳转到添加服务的页面
	 * @return
	 */
	public String gotoAddUserPage(){
		this.pagePath="./admin/releasesevice.jsp";
		return"pagePath";
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

	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}
	public List<File> getFile() {
		return file;
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

	public List<String> getDataUrl() {
		return dataUrl;
	}

	public void setDataUrl(List<String> dataUrl) {
		this.dataUrl = dataUrl;
	}

}
