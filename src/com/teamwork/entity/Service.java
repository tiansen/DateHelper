package com.teamwork.entity;

/**
 * Service entity. @author MyEclipse Persistence Tools
 */

public class Service implements java.io.Serializable {

	// Fields

	private Integer serviceId;
	private String serviceName;
	private String type;
	private String content;
	private String image;
	private Double price;

	// Constructors

	/** default constructor */
	public Service() {
	}

	/** minimal constructor */
	public Service(String serviceName, String type, String content) {
		this.serviceName = serviceName;
		this.type = type;
		this.content = content;
	}

	/** full constructor */
	public Service(String serviceName, String type, String content,
			String image, Double price) {
		this.serviceName = serviceName;
		this.type = type;
		this.content = content;
		this.image = image;
		this.price = price;
	}

	// Property accessors

	public Integer getServiceId() {
		return this.serviceId;
	}

	public void setServiceId(Integer serviceId) {
		this.serviceId = serviceId;
	}

	public String getServiceName() {
		return this.serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

}