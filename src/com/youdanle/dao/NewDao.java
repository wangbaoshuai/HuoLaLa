package com.youdanle.dao;

import java.util.List;

import com.youdanle.entity.Car;
import com.youdanle.entity.Forum;
import com.youdanle.entity.New;



public interface NewDao {
	public int addNew(New n)throws Exception;
	public New findNewByNid(New n)throws Exception;
	public List<New> findAllNew()throws Exception;
	public void updateNew(New n) throws Exception;
	public int deleteNewByNid(New n)throws Exception;
	//分页件查(8个一页)
	public int findPage(New n)throws Exception;
	public List<New> findNewByTermAndPage(New n,Integer page);
}	
