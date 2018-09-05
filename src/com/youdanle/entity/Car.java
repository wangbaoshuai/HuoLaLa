package com.youdanle.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Car entity. @author MyEclipse Persistence Tools
 */

public class Car implements java.io.Serializable {

	// Fields

	private Integer cid;
	private Cartype cartype;
	private String cname;
	private String loginname;
	private String loginpass;
	private String type;
	private String phone;
	private String cnumber;
	private String caddr;
	private Double cload;
	private String cstatus;
	private String cvip;
	private String images;
	private Double csize;
	private String collect;
	private Set forums = new HashSet(0);
	private Set replies = new HashSet(0);
	private Set getorders = new HashSet(0);
	//tiaojian
	private Double maxload;
	private Double minload;
	// Constructors

	/** default constructor */
	public Car() {
	}

	/** full constructor */
	public Car(Cartype cartype, String cname, String loginname,
			String loginpass, String type, String phone, String cnumber,
			String caddr, Double cload, String cstatus, String cvip,
			String images, Double csize, String collect, Set forums,
			Set replies, Set getorders) {
		this.cartype = cartype;
		this.cname = cname;
		this.loginname = loginname;
		this.loginpass = loginpass;
		this.type = type;
		this.phone = phone;
		this.cnumber = cnumber;
		this.caddr = caddr;
		this.cload = cload;
		this.cstatus = cstatus;
		this.cvip = cvip;
		this.images = images;
		this.csize = csize;
		this.collect = collect;
		this.forums = forums;
		this.replies = replies;
		this.getorders = getorders;
	}

	// Property accessors

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Cartype getCartype() {
		return this.cartype;
	}

	public void setCartype(Cartype cartype) {
		this.cartype = cartype;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getLoginname() {
		return this.loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getLoginpass() {
		return this.loginpass;
	}

	public void setLoginpass(String loginpass) {
		this.loginpass = loginpass;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCnumber() {
		return this.cnumber;
	}

	public void setCnumber(String cnumber) {
		this.cnumber = cnumber;
	}

	public String getCaddr() {
		return this.caddr;
	}

	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}

	public Double getCload() {
		return this.cload;
	}

	public void setCload(Double cload) {
		this.cload = cload;
	}

	public String getCstatus() {
		return this.cstatus;
	}

	public void setCstatus(String cstatus) {
		this.cstatus = cstatus;
	}

	public String getCvip() {
		return this.cvip;
	}

	public void setCvip(String cvip) {
		this.cvip = cvip;
	}

	public String getImages() {
		return this.images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public Double getCsize() {
		return this.csize;
	}

	public void setCsize(Double csize) {
		this.csize = csize;
	}

	public String getCollect() {
		return this.collect;
	}

	public void setCollect(String collect) {
		this.collect = collect;
	}

	public Set getForums() {
		return this.forums;
	}

	public void setForums(Set forums) {
		this.forums = forums;
	}

	public Set getReplies() {
		return this.replies;
	}

	public void setReplies(Set replies) {
		this.replies = replies;
	}

	public Set getGetorders() {
		return this.getorders;
	}

	public void setGetorders(Set getorders) {
		this.getorders = getorders;
	}

	public Double getMaxload() {
		return maxload;
	}

	public void setMaxload(Double maxload) {
		this.maxload = maxload;
	}

	public Double getMinload() {
		return minload;
	}

	public void setMinload(Double minload) {
		this.minload = minload;
	}

}