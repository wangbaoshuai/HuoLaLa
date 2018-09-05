package com.youdanle.dao;

import java.util.List;

import com.youdanle.entity.Puborder;

public interface PuborderDao {
	public List<Puborder> findAllPuborder()throws Exception;
	public Puborder findPuborderByPid(Puborder p)throws Exception;
	public int updatePuborder(Puborder p)throws Exception;
	public int addPuborder(Puborder p)throws Exception;
	//��������
	public List<Puborder> findPuborderByTerm(Puborder p)throws Exception;
	//������ҳ����
	public int findPage(Puborder p)throws Exception;
	public List<Puborder> findPuborderByTermAndPage(Puborder p,Integer page);
	
}
