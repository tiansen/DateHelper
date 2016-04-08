package com.teamwork.entity;

/**
 * 作用：	      消息实体类
 * 时间：	  2015年3月2 日 10:56:33
 * 修改时间：  
 * 修改人：
 * @return
 */

public class Message {
	private int MessageId;
	private String MessageType;
	private String Content;
	public int getMessageId() {
		return MessageId;
	}
	public void setMessageId(int messageId) {
		MessageId = messageId;
	}
	public String getMessageType() {
		return MessageType;
	}
	public void setMessageType(String messageType) {
		MessageType = messageType;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	
	
	}
	

