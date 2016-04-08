package com.teamwork.entity;

/**
 * 作用：	       黑名单信息实体类
 * 时间：	  2015年3月2 日 10:56:33
 * 修改时间：  
 * 修改人：
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
