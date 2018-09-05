package com.youdanle.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Company entity. @author MyEclipse Persistence Tools
 */

public class Company implements java.io.Serializable {

	// Fields

	private Integer cid;
	private String cname;
	private String cintro;
	private String type;
	private String loginname;
	private String loginpass;
	private String phone;
	private String cvip;
	private String caddr;
	private String images;
	private String cstatus;
	private Set forums = new HashSet(0);
	private Set replies = new HashSet(0);
	private Set puborders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Company() {
	}

	/** full constructor */
	public Company(String cname, String cintro, String type, String loginname,
			String loginpass, String cphone, String cvip, String caddr,
			String images, String cstatus, Set forums, Set replies,
			Set puborders) {
		this.cname = cname;
		this.cintro = cintro;
		this.type = type;
		this.loginname = loginname;
		this.loginpass = loginpass;
		this.phone = cphone;
		this.cvip = cvip;
		this.caddr = caddr;
		this.images = images;
		this.cstatus = cstatus;
		this.forums = forums;
		this.replies = replies;
		this.puborders = puborders;
	}

	// Property accessors

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCintro() {
		return this.cintro;
	}

	public void setCintro(String cintro) {
		this.cintro = cintro;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCvip() {
		return this.cvip;
	}

	public void setCvip(String cvip) {
		this.cvip = cvip;
	}

	public String getCaddr() {
		return this.caddr;
	}

	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}

	public String getImages() {
		return this.images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getCstatus() {
		return this.cstatus;
	}

	public void setCstatus(String cstatus) {
		this.cstatus = cstatus;
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

	public Set getPuborders() {
		return this.puborders;
	}

	public void setPuborders(Set puborders) {
		this.puborders = puborders;
	}

}