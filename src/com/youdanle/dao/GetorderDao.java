package com.youdanle.dao;

import java.util.List;

import com.youdanle.entity.Car;
import com.youdanle.entity.Getorder;



public interface GetorderDao {
	public List<Getorder> findAllGetorder()throws Exception;
	public Getorder findGetorderBygid(Getorder g)throws Exception;
	public int updateGetorder(Getorder g)throws Exception;
	public int addGetorder(Getorder g)throws Exception;
	public int deleteGetorder(Getorder g)throws Exception;
	//按条分页件查
	public int findPage(Getorder g)throws Exception;
	public List<Getorder> findallByCidAndPage(Getorder g,Integer page);
	public List<Getorder> findallByPidAndPage(Getorder g,Integer page);
}
