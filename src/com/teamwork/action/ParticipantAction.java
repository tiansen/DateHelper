package com.teamwork.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionContext;
import com.teamwork.entity.*;
import com.teamwork.entity.Date;
import com.teamwork.service.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.HttpServletRequest;

@Controller("participantAction")
@Scope("prototype")
public class ParticipantAction {
	// 使用Spring的注解，为类的成员变量赋值
	@Resource
	private DateService dateService;
	private String pagePath = null; // 根据Struts 2的配置，跳转指定路径
	private User user;// 收集页面用户对象的数据
	private Date date;// 收集页面约会的数据
	private Service service;// 收集页面用户对象的数据
	private HttpServletRequest request = ServletActionContext.getRequest();


	HttpSession session = ServletActionContext.getRequest().getSession();


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
//	/**
//	 * 查询所有约会
//	 * 
//	 * @return
//	 */
//	public String findAllDate() {
//
//		int offset = 0;// 起始行数
//		int line = 0;
//
//			line = 6;// 每页显示的行数
//
//		if (request.getParameter("offset") != null) {
//			offset = Integer.parseInt(request.getParameter("offset"));
//		}
//		PageModel model = this.dateService.findAllDate(offset, line);
//		ActionContext.getContext().put("model_date", model);
//		pagePath = "./admin/managedate.jsp";
//		return "pagePath";
//	}
//	/**
//	 * 通过ID查询所有约会
//	 * 
//	 * @return
//	 */
//	public String findAllDateById() {
//
//		int offset = 0;// 起始行数
//		int line = 2;// 每页显示的行数
//		if (request.getParameter("offset") != null) {
//			offset = Integer.parseInt(request.getParameter("offset"));
//		}
//		int id = ((User)session.getAttribute("user")).getUserId();
//		PageModel model = this.dateService.findAllDateById(offset, line, id);
//		ActionContext.getContext().put("mydate", model);
//		pagePath = "./user/mydateInvited.jsp";
//		return "pagePath";
//	}
//	/**
//	 * 删除服务信息并重置session，再次查询一次。
//	 * 
//	 * @return
//	 */
//	public String deleteDate() {
//		int id = Integer.parseInt(request.getParameter("id").toString());
//		this.dateService.deleteDate(id);
//		session.removeAttribute("model_service");
//		findAllDate();
//		pagePath = "./admin/manageservice.jsp";
//		return "pagePath";
//	}
	/**
	 * 根据ID查询约会信息
	 * 
	 * @return
	 */
	public String findParticipantById() {

		int id = Integer.parseInt(request.getParameter("id").toString());
		Date u = this.dateService.getDateByID(id);
		ActionContext.getContext().put("dateById", u);
			pagePath = "./admin/sigledate.jsp";	
		return "pagePath";
	}

	/**
	 * 添加约会
	 * 
	 * @return
	 */
	public String addDate() {
		System.out.println("OK跳入");
		User u = (User)session.getAttribute("user");
		System.out.println("ID:"+u.getUserId());
		date.setUserId(u.getUserId());
		dateService.addDate(date);
		System.out.println("OK跳出");
		pagePath = "./user/userPage.jsp";
		return "pagePath";
	}

	/*
	 * 对接受以及要传输的数据进行赋值setter和 getter
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
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
}
