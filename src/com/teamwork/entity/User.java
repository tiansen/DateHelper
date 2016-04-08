package com.teamwork.entity;

import java.util.Date;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer userId;
	private String userName;
	private String passWord;
	private String email;
	private String mobile;
	private Double account;
	private String realName;
	private Integer role;
	private Date regTime;
	private Short sex;
	private Short maritalStatus;
	private Integer age;
	private String address;
	private String image;
	private Set<com.teamwork.entity.Date> dates;
	// Constructors



	/** default constructor */
	public User() {
	}


	/** minimal constructor */
	public User(String userName, String passWord) {
		this.userName = userName;
		this.passWord = passWord;
	}

	/** full constructor */
	public User(String userName, String passWord, String email, String mobile,
			Double account, String realName, Integer role, Date regTime,
			Short sex, Short maritalStatus, Integer age, String address,
			String image) {
		this.userName = userName;
		this.passWord = passWord;
		this.email = email;
		this.mobile = mobile;
		this.account = account;
		this.realName = realName;
		this.role = role;
		this.regTime = regTime;
		this.sex = sex;
		this.maritalStatus = maritalStatus;
		this.age = age;
		this.address = address;
		this.image = image;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return this.passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Double getAccount() {
		return this.account;
	}

	public void setAccount(Double account) {
		this.account = account;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public Integer getRole() {
		return this.role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public Date getRegTime() {
		return this.regTime;
	}

	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}

	public Short getSex() {
		return this.sex;
	}

	public void setSex(Short sex) {
		this.sex = sex;
	}

	public Short getMaritalStatus() {
		return this.maritalStatus;
	}

	public void setMaritalStatus(Short maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}


	public Set<com.teamwork.entity.Date> getDates() {
		return dates;
	}


	public void setDates(Set<com.teamwork.entity.Date> dates) {
		this.dates = dates;
	}


}