package com.teamwork.entity;

/**
 * ���ã�	       ��������Ϣʵ����
 * ʱ�䣺	  2015��3��2 �� 10:56:33
 * �޸�ʱ�䣺  
 * �޸��ˣ�
 * @return
 */

public class BlackList {
	private int BlackListId;
	private int UserId;
	private int BlackUser;

	public int getBlackListId() {
		return BlackListId;
	}

	public void setBlackListId(int blackListId) {
		BlackListId = blackListId;
	}

	public int getUserId() {
		return UserId;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}

	public int getBlackUser() {
		return BlackUser;
	}

	public void setBlackUser(int blackUser) {
		BlackUser = blackUser;
	}

}
