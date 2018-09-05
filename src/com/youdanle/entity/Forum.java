package com.youdanle.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Forum entity. @author MyEclipse Persistence Tools
 */

public class Forum implements java.io.Serializable {

	// Fields

	private Integer fid;
	private Car car;
	private Company company;
	private String ftitle;
	private String fcontent;
	private Date fdate;
	private Set replies = new HashSet(0);

	// Constructors

	/** default constructor */
	public Forum() {
	}

	/** full constructor */
	public Forum(Car car, Company company, String ftitle, String fcontent,
			Date fdate, Set replies) {
		this.car = car;
		this.company = company;
		this.ftitle = ftitle;
		this.fcontent = fcontent;
		this.fdate = fdate;
		this.replies = replies;
	}

	// Property accessors

	public Integer getFid() {
		return this.fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
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

	public String getFtitle() {
		return this.ftitle;
	}

	public void setFtitle(String ftitle) {
		this.ftitle = ftitle;
	}

	public String getFcontent() {
		return this.fcontent;
	}

	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}

	public Date getFdate() {
		return this.fdate;
	}

	public void setFdate(Date fdate) {
		this.fdate = fdate;
	}

	public Set getReplies() {
		return this.replies;
	}

	public void setReplies(Set replies) {
		this.replies = replies;
	}

}