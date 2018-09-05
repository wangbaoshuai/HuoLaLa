package com.youdanle.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.youdanle.dao.ManagerDao;
import com.youdanle.entity.Car;
import com.youdanle.entity.Manager;

public class ManagerDaoImpl extends HibernateDaoSupport implements ManagerDao {

	@Override
	public void addManager(Manager m) throws Exception {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(m);
	}

	@Override
	public Manager findManagerByLogin(Manager m) throws Exception {
		// TODO Auto-generated method stub
		String hql="from Manager m where m.loginname=:lgname and m.loginpass=:lgpass";
		Query query = this.getSession().createQuery(hql);
		query.setString("lgname", m.getLoginname());
		query.setString("lgpass", m.getLoginpass());
		List<Manager> mlist = query.list();
		if(mlist.size()>0)
			return mlist.get(0);
		return null;
	}

	@Override
	public List<Manager> findAllManager() throws Exception {
		// TODO Auto-generated method stub
		String hql="from Manager";
		Query query = this.getSession().createQuery(hql);
		List<Manager> mlist = query.list();
		return mlist;
	}

	@Override
	public void updateManager(Manager m) throws Exception {
		// TODO Auto-generated method stub

	}

}
