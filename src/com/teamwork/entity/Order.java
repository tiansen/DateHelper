package com.teamwork.entity;

import java.util.Date;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer orderId;
	private Integer serviceId;
	private Integer userId;
	private Date time;
	private Integer payState;
	private Double price;
	private Integer deleteState;
	private Integer dateId;
	private Integer isTuiSong;
	private Integer tuiUserId;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(Integer serviceId, Integer userId) {
		this.serviceId = serviceId;
		this.userId = userId;
	}

	/** full constructor */
	public Order(Integer serviceId, Integer userId, Date time,
			Integer payState, Double price, Integer deleteState,
			Integer dateId, Integer isTuiSong, Integer tuiUserId) {
		this.serviceId = serviceId;
		this.userId = userId;
		this.time = time;
		this.payState = payState;
		this.price = price;
		this.deleteState = deleteState;
		this.dateId = dateId;
		this.isTuiSong = isTuiSong;
		this.tuiUserId = tuiUserId;
	}

	// Property accessors

	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getServiceId() {
		return this.serviceId;
	}

	public void setServiceId(Integer serviceId) {
		this.serviceId = serviceId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Integer getPayState() {
		return this.payState;
	}

	public void setPayState(Integer payState) {
		this.payState = payState;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getDeleteState() {
		return this.deleteState;
	}

	public void setDeleteState(Integer deleteState) {
		this.deleteState = deleteState;
	}

	public Integer getDateId() {
		return this.dateId;
	}

	public void setDateId(Integer dateId) {
		this.dateId = dateId;
	}

	public Integer getIsTuiSong() {
		return this.isTuiSong;
	}

	public void setIsTuiSong(Integer isTuiSong) {
		this.isTuiSong = isTuiSong;
	}

	public Integer getTuiUserId() {
		return this.tuiUserId;
	}

	public void setTuiUserId(Integer tuiUserId) {
		this.tuiUserId = tuiUserId;
	}

}