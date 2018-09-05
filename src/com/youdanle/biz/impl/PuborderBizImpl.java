package com.youdanle.biz.impl;

import java.util.List;

import com.youdanle.biz.PuborderBiz;
import com.youdanle.dao.PuborderDao;
import com.youdanle.entity.Puborder;

public class PuborderBizImpl implements PuborderBiz {
	private PuborderDao pubdao;
	@Override
	public List<Puborder> findAllPuborder() throws Exception {
		// TODO Auto-generated method stub
		return pubdao.findAllPuborder();
	}

	@Override
	public Puborder findPuborderByPid(Puborder p) throws Exception {
		// TODO Auto-generated method stub
		return pubdao.findPuborderByPid(p);
	}

	@Override
	public int updatePuborder(Puborder p) throws Exception {
		// TODO Auto-generated method stub
		return pubdao.updatePuborder(p);
	}

	@Override
	public int addPuborder(Puborder p) throws Exception {
		// TODO Auto-generated method stub
		return pubdao.addPuborder(p);
	}

	public PuborderDao getPubdao() {
		return pubdao;
	}

	public void setPubdao(PuborderDao pubdao) {
		this.pubdao = pubdao;
	}

	@Override
	public List<Puborder> findPuborderByTerm(Puborder p) throws Exception {
		// TODO Auto-generated method stub
		return pubdao.findPuborderByTerm(p);
	}

	@Override
	public int findPage(Puborder p) throws Exception {
		// TODO Auto-generated method stub
		return pubdao.findPage(p);
	}

	@Override
	public List<Puborder> findPuborderByTermAndPage(Puborder p, Integer page) {
		// TODO Auto-generated method stub
		return pubdao.findPuborderByTermAndPage(p, page);
	}
	
}
