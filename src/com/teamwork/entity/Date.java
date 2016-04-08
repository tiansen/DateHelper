package com.teamwork.entity;

import java.util.*;

/**
 * Date entity. @author MyEclipse Persistence Tools
 */

public class Date implements java.io.Serializable {

	// Fields

	private Integer dateId;
	private String title;
	private String time;
	private String content;
	private Integer userId;
	private String address;
	private Set<User> users;  
	// Constructors


	/** default constructor */
	public Date() {
	}


	/** minimal constructor */
	public Date(String title, String time, String content) {
		this.title = title;
		this.time = time;
		this.content = content;
	}

	/** full constructor */
	public Date(String title, String time, String content, Integer userId,
			String address) {
		this.title = title;
		this.time = time;
		this.content = content;
		this.userId = userId;
		this.address = address;
	}

	// Property accessors


	public Integer getDateId() {
		return this.dateId;
	}

	public void setDateId(Integer dateId) {
		this.dateId = dateId;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}
}