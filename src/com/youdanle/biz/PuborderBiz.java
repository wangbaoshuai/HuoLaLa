package com.youdanle.biz;

import java.util.List;

import com.youdanle.entity.Puborder;

public interface PuborderBiz {
	public List<Puborder> findAllPuborder()throws Exception;
	public Puborder findPuborderByPid(Puborder p)throws Exception;
	public int updatePuborder(Puborder p)throws Exception;
	public int addPuborder(Puborder p)throws Exception;
	//按条件查
	public List<Puborder> findPuborderByTerm(Puborder p)throws Exception;
	//按条分页件查
	public int findPage(Puborder p)throws Exception;
	public List<Puborder> findPuborderByTermAndPage(Puborder p,Integer page);
}
