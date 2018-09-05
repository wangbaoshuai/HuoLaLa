package com.youdanle.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.youdanle.dao.CarTypeDao;
import com.youdanle.entity.Cartype;

public class CarTypeDaoImpl extends HibernateDaoSupport implements CarTypeDao {

	@Override
	public List<Cartype> findAll() throws Exception {
		// TODO Auto-generated method stub
		String hql="from Cartype";
		List<Cartype> ctList =this.getSession().createQuery(hql).list();
		return ctList;
	}

}
