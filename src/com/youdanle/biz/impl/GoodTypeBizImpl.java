package com.youdanle.biz.impl;

import java.util.List;

import com.youdanle.biz.GoodTypeBiz;
import com.youdanle.dao.GoodTypeDao;
import com.youdanle.entity.Goodtype;


public class GoodTypeBizImpl implements GoodTypeBiz {
	private GoodTypeDao gtdao;
	@Override
	public List<Goodtype> findAll() throws Exception {
		// TODO Auto-generated method stub
		return gtdao.findAll();
	}
	public GoodTypeDao getGtdao() {
		return gtdao;
	}
	public void setGtdao(GoodTypeDao gtdao) {
		this.gtdao = gtdao;
	}
	
}
