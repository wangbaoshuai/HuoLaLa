package com.youdanle.entity;

import java.util.Date;

/**
 * New entity. @author MyEclipse Persistence Tools
 */

public class New implements java.io.Serializable {

	// Fields

	private Integer nid;
	private String ntitle;
	private String ncontent;
	private String nimage;
	private Date ndate;

	// Constructors

	/** default constructor */
	public New() {
	}

	/** full constructor */
	public New(String ntitle, String ncontent, String nimage, Date ndate) {
		this.ntitle = ntitle;
		this.ncontent = ncontent;
		this.nimage = nimage;
		this.ndate = ndate;
	}

	// Property accessors

	public Integer getNid() {
		return this.nid;
	}

	public void setNid(Integer nid) {
		this.nid = nid;
	}

	public String getNtitle() {
		return this.ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontent() {
		return this.ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public String getNimage() {
		return this.nimage;
	}

	public void setNimage(String nimage) {
		this.nimage = nimage;
	}

	public Date getNdate() {
		return this.ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}

}