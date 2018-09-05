package com.youdanle.entity;

import java.util.Date;

/**
 * Reply entity. @author MyEclipse Persistence Tools
 */

public class Reply implements java.io.Serializable {

	// Fields

	private Integer rid;
	private Car car;
	private Company company;
	private Forum forum;
	private String rcontent;
	private Date rdate;

	// Constructors

	/** default constructor */
	public Reply() {
	}

	/** full constructor */
	public Reply(Car car, Company company, Forum forum, String rcontent,
			Date rdate) {
		this.car = car;
		this.company = company;
		this.forum = forum;
		this.rcontent = rcontent;
		this.rdate = rdate;
	}

	// Property accessors

	public Integer getRid() {
		return this.rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public Car getCar() {
		return this.car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public Company getCompany() {
		return this.company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Forum getForum() {
		return this.forum;
	}

	public void setForum(Forum forum) {
		this.forum = forum;
	}

	public String getRcontent() {
		return this.rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public Date getRdate() {
		return this.rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

}