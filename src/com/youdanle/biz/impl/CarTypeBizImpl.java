package com.youdanle.biz.impl;

import java.util.List;

import com.youdanle.biz.CarTypeBiz;
import com.youdanle.dao.CarTypeDao;
import com.youdanle.entity.Cartype;



public class CarTypeBizImpl implements CarTypeBiz {
	private CarTypeDao ctdao;
	@Override
	public List<Cartype> findAll() throws Exception {
		// TODO Auto-generated method stub
		return ctdao.findAll();
	}
	public CarTypeDao getCtdao() {
		return ctdao;
	}
	public void setCtdao(CarTypeDao ctdao) {
		this.ctdao = ctdao;
	}
	
}
