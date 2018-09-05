package com.youdanle.entity;

import java.util.Date;

/**
 * Getorder entity. @author MyEclipse Persistence Tools
 */

public class Getorder implements java.io.Serializable {

	// Fields

	private Integer gid;
	private Car car;
	private Puborder puborder;
	private Double weight;
	private Date time;
	private String beizhu;
	private String status;

	// Constructors

	/** default constructor */
	public Getorder() {
	}

	/** full constructor */
	public Getorder(Car car, Puborder puborder, Double weight, Date time,
			String beizhu, String status) {
		this.car = car;
		this.puborder = puborder;
		this.weight = weight;
		this.time = time;
		this.beizhu = beizhu;
		this.status = status;
	}

	// Property accessors

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public Car getCar() {
		return this.car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public Puborder getPuborder() {
		return this.puborder;
	}

	public void setPuborder(Puborder puborder) {
		this.puborder = puborder;
	}

	public Double getWeight() {
		return this.weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}