package com.teamwork.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.util.Date;

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

@Controller("orderAction")
@Scope("prototype")
public class OrderAction {
	// 使用Spring的注解，为类的成员变量赋值
	@Resource
	private OrderService orderService;
	private String pagePath = null; // 根据Struts 2的配置，跳转指定路径
	private User user;// 收集页面用户对象的数据
	private Service service;// 收集页面用户对象的数据
	private Order order;// 收集页面订单对象的数据
	private HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = ServletActionContext.getRequest().getSession();

	/**
	 * 添加订单，并使用默认值
	 * 
	 * @return
	 */
	public String addOrder() {
		System.out.println("数据："+order.getPrice());
		Date d = new Date();
		order.setTime(d);
		order.setDeleteState(0);
		order.setPayState(0);
		order.setIsTuiSong(0);//不是推送的数据
		this.orderService.addOrder(order);
		this.pagePath = "./user/userPage.jsp";
		return "pagePath";
	}

	/**
	 * 查询所有订单
	 * 
	 * @return
	 */
	public String findAllOrder() {
		int sign = 0;
		if(request.getParameter("sign")!=null){
		sign = Integer.parseInt(request.getParameter("sign"));
		}
		System.out.println("sign:"+sign);
		int offset = 0;// 起始行数
		int line = 0;// 每页显示的行数
		if (sign==1) {
			line = 3;
		} else {
			line = 6;
		}
		if (request.getParameter("offset") != null) {
			offset = Integer.parseInt(request.getParameter("offset"));
		}
		PageModel model = this.orderService.findAllOrder(offset, line);
		ActionContext.getContext().put("model_order", model);
		//
		if (sign==1) {
			pagePath = "./user/userorder.jsp";
		} else {
			pagePath = "./admin/orderinfo.jsp";
		}
		return "pagePath";
	}


	/**
	 * 根据ID查询订单信息
	 * 
	 * @return
	 */
	public String findOrderById() {
		int id = Integer.parseInt(request.getParameter("id").toString());
		Order o = this.orderService.getOrderByID(id);
		int ServiceId = o.getServiceId();
		int UserId = o.getUserId();
//		ServiceService ss = new ServiceService();
//		int test = ss.test(ServiceId);
//		System.out.println("test:"+test);
		//这样调用DAO层没有自动注解
//		Service s = ss.getServiceByID(ServiceId);
		ActionContext.getContext().put("order_serviceName", this.orderService.getServiceByID(ServiceId).getServiceName());
		ActionContext.getContext().put("orderById", o);
		ActionContext.getContext().put("order_userName", this.orderService.getUserByID(UserId).getUserName());

		pagePath = "./admin/sigleorderinfo.jsp";
		return "pagePath";
	}
	/**
	 * 根据ID查询推送信息
	 * 
	 * @return
	 */
	public String tuiSong() {
//		int id = Integer.parseInt(request.getParameter("id").toString());
//		List l = this.orderService.getOrderByIDTui(id);
//		int ServiceId = o.getServiceId();
//		int UserId = o.getUserId();
//		ActionContext.getContext().put("order_serviceName", this.orderService.getServiceByID(ServiceId).getServiceName());
//		ActionContext.getContext().put("orderById", o);
//		ActionContext.getContext().put("order_userName", this.orderService.getUserByID(UserId).getUserName());
		System.out.println("Action进入");
		int offset = 0;// 起始行数
		int line = 1;// 每页显示的行数
		if (request.getParameter("offset") != null) {
			offset = Integer.parseInt(request.getParameter("offset"));
		}
		User u = (User)session.getAttribute("user");
		PageModel model = this.orderService.findAllOrderTui(offset, line, u.getUserId());
		Order o = (Order)model.getEntityList().get(0);
		int userId = o.getTuiUserId();
		int serviceId = o.getServiceId();
		System.out.println("第二轮查询"+userId+" "+serviceId);
		Service s = this.orderService.getServiceByID(serviceId);
		User tu = this.orderService.getUserByID(userId);
		ActionContext.getContext().put("model_order", model);
		ActionContext.getContext().put("tui_user", tu);
		ActionContext.getContext().put("tui_service", s);
		//
		System.out.println("查询结束");
		pagePath = "./user/tuisong.jsp";
		return "pagePath";
	}
	/**
	 * 添加推送
	 * 
	 * @return
	 */
	public String addTuiSongOrder() {		
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
		int userId = Integer.parseInt(request.getParameter("userId"));
		int serviceid = Integer.parseInt(request.getParameter("serviceid"));
		int tuisongid = Integer.parseInt(request.getParameter("tuisongid"));
		System.out.println("数据："+userId+" "+serviceid+" "+tuisongid);
		Order o = new Order();
		Date d = new Date();
		o.setUserId(userId);
		o.setServiceId(serviceid);
		o.setTuiUserId(tuisongid);
		o.setTime(d);
		o.setDeleteState(0);
		o.setPayState(0);
		o.setIsTuiSong(1);//是推送的数据
		this.orderService.addOrder(o);
		JSONObject json = new JSONObject();		
		json.put("result","1");
		writer.print(json.toString());
		System.out.println(json.toString());
		writer.flush();
		writer.close();

		System.out.println("OK");
		this.pagePath = "./success.jsp";
		return null;
	}

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

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
	
}
