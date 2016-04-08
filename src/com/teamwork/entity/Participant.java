package com.teamwork.entity;

/**
 * Participant entity. @author MyEclipse Persistence Tools
 */

public class Participant implements java.io.Serializable {

	// Fields

	private Integer participantId;
	private Integer userId;
	private Integer dateId;
	private Integer state;

	// Constructors

	/** default constructor */
	public Participant() {
	}

	/** minimal constructor */
	public Participant(Integer userId) {
		this.userId = userId;
	}

	/** full constructor */
	public Participant(Integer userId, Integer dateId, Integer state) {
		this.userId = userId;
		this.dateId = dateId;
		this.state = state;
	}

	// Property accessors

	public Integer getParticipantId() {
		return this.participantId;
	}

	public void setParticipantId(Integer participantId) {
		this.participantId = participantId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getDateId() {
		return this.dateId;
	}

	public void setDateId(Integer dateId) {
		this.dateId = dateId;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

}