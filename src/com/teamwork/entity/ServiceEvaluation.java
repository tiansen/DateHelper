package com.teamwork.entity;


/**
 * 作用：	       服务评价实体类，保存订单服务ID
 * 时间：	  2015年3月2 日 12:16:35
 * 修改时间：  
 * 修改人：
 * @return
 */

public class ServiceEvaluation {
	private int SEId;
	private int ServiceId;
	private int UserId;
	private String Content;
	private Date Time;
	private int State;

	public int getSEId() {
		return SEId;
	}

	public void setSEId(int sEId) {
		SEId = sEId;
	}

	public int getServiceId() {
		return ServiceId;
	}

	public void setServiceId(int serviceId) {
		ServiceId = serviceId;
	}

	public int getUserId() {
		return UserId;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public Date getTime() {
		return Time;
	}

	public void setTime(Date time) {
		Time = time;
	}

	public int getState() {
		return State;
	}

	public void setState(int state) {
		State = state;
	}

}
