package com.teamwork.entity;


/**
 * ���ã�	       ��������ʵ���࣬���涩������ID
 * ʱ�䣺	  2015��3��2 �� 12:16:35
 * �޸�ʱ�䣺  
 * �޸��ˣ�
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
