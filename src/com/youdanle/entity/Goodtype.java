package com.youdanle.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Goodtype entity. @author MyEclipse Persistence Tools
 */

public class Goodtype implements java.io.Serializable {

	// Fields

	private Integer gtid;
	private String gtname;
	private Set puborders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Goodtype() {
	}

	/** full constructor */
	public Goodtype(String gtname, Set puborders) {
		this.gtname = gtname;
		this.puborders = puborders;
	}

	// Property accessors

	public Integer getGtid() {
		return this.gtid;
	}

	public void setGtid(Integer gtid) {
		this.gtid = gtid;
	}

	public String getGtname() {
		return this.gtname;
	}

	public void setGtname(String gtname) {
		this.gtname = gtname;
	}

	public Set getPuborders() {
		return this.puborders;
	}

	public void setPuborders(Set puborders) {
		this.puborders = puborders;
	}

}