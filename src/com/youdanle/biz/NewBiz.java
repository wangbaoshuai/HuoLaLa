package com.youdanle.biz;

import java.util.List;

import com.youdanle.entity.Forum;
import com.youdanle.entity.New;



public interface NewBiz {
	public int addNew(New n)throws Exception;
	public New findNewByNid(New n)throws Exception;
	public List<New> findAllNew()throws Exception;
	public void updateNew(New n) throws Exception;
	public int deleteNewByNid(New n)throws Exception;
	//��ҳ����(8��һҳ)
	public int findPage(New n)throws Exception;
	public List<New> findNewByTermAndPage(New n,Integer page);
}	
