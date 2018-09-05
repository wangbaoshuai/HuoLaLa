package com.youdanle.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Puborder entity. @author MyEclipse Persistence Tools
 */

public class Puborder implements java.io.Serializable {

	// Fields

	private Integer pid;
	private Company company;
	private Goodtype goodtype;
	private String staraddr;
	private String finishaddr;
	private Date startime;
	private Date finishtime;
	private Double price;
	private Double weight;
	private String unit;
	private Double sale;
	private Double starweight;
	private Double space;
	private String goodname;
	private String status;
	private String images;
	private Set getorders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Puborder() {
	}

	/** full constructor */
	public Puborder(Company company, Goodtype goodtype, String staraddr,
			String finishaddr, Date startime, Date finishtime, Double price,
			Double weight, String unit, Double sale, Double starweight,
			Double space, String goodname, String status, String images,
			Set getorders) {
		this.company = company;
		this.goodtype = goodtype;
		this.staraddr = staraddr;
		this.finishaddr = finishaddr;
		this.startime = startime;
		this.finishtime = finishtime;
		this.price = price;
		this.weight = weight;
		this.unit = unit;
		this.sale = sale;
		this.starweight = starweight;
		this.space = space;
		this.goodname = goodname;
		this.status = status;
		this.images = images;
		this.getorders = getorders;
	}

	// Property accessors

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Company getCompany() {
		return this.company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Goodtype getGoodtype() {
		return this.goodtype;
	}

	public void setGoodtype(Goodtype goodtype) {
		this.goodtype = goodtype;
	}

	public String getStaraddr() {
		return this.staraddr;
	}

	public void setStaraddr(String staraddr) {
		this.staraddr = staraddr;
	}

	public String getFinishaddr() {
		return this.finishaddr;
	}

	public void setFinishaddr(String finishaddr) {
		this.finishaddr = finishaddr;
	}

	public Date getStartime() {
		return this.startime;
	}

	public void setStartime(Date startime) {
		this.startime = startime;
	}

	public Date getFinishtime() {
		return this.finishtime;
	}

	public void setFinishtime(Date finishtime) {
		this.finishtime = finishtime;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getWeight() {
		return this.weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public String getUnit() {
		return this.unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public Double getSale() {
		return this.sale;
	}

	public void setSale(Double sale) {
		this.sale = sale;
	}

	public Double getStarweight() {
		return this.starweight;
	}

	public void setStarweight(Double starweight) {
		this.starweight = starweight;
	}

	public Double getSpace() {
		return this.space;
	}

	public void setSpace(Double space) {
		this.space = space;
	}

	public String getGoodname() {
		return this.goodname;
	}

	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getImages() {
		return this.images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public Set getGetorders() {
		return this.getorders;
	}

	public void setGetorders(Set getorders) {
		this.getorders = getorders;
	}

}