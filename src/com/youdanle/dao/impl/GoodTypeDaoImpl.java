package com.youdanle.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.youdanle.dao.GoodTypeDao;
import com.youdanle.entity.Cartype;
import com.youdanle.entity.Goodtype;

public class GoodTypeDaoImpl extends HibernateDaoSupport implements GoodTypeDao {

	@Override
	public List<Goodtype> findAll() throws Exception {
		// TODO Auto-generated method stub
		String hql="from Goodtype";
		List<Goodtype> gtList =this.getSession().createQuery(hql).list();
		return gtList;
	}

}
