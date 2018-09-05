package com.youdanle.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Cartype entity. @author MyEclipse Persistence Tools
 */

public class Cartype implements java.io.Serializable {

	// Fields

	private Integer ctid;
	private String ctname;
	private Set cars = new HashSet(0);

	// Constructors

	/** default constructor */
	public Cartype() {
	}

	/** full constructor */
	public Cartype(String ctname, Set cars) {
		this.ctname = ctname;
		this.cars = cars;
	}

	// Property accessors

	public Integer getCtid() {
		return this.ctid;
	}

	public void setCtid(Integer ctid) {
		this.ctid = ctid;
	}

	public String getCtname() {
		return this.ctname;
	}

	public void setCtname(String ctname) {
		this.ctname = ctname;
	}

	public Set getCars() {
		return this.cars;
	}

	public void setCars(Set cars) {
		this.cars = cars;
	}

}