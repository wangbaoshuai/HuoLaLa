package com.youdanle.entity;

/**
 * Manager entity. @author MyEclipse Persistence Tools
 */

public class Manager implements java.io.Serializable {

	// Fields

	private Integer mid;
	private String mname;
	private String loginname;
	private String loginpass;
	private String type;

	// Constructors

	/** default constructor */
	public Manager() {
	}

	/** full constructor */
	public Manager(String mname, String loginname, String loginpass, String type) {
		this.mname = mname;
		this.loginname = loginname;
		this.loginpass = loginpass;
		this.type = type;
	}

	// Property accessors

	public Integer getMid() {
		return this.mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public String getMname() {
		return this.mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
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

}