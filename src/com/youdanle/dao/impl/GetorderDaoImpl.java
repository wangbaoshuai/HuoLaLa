package com.youdanle.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.youdanle.dao.GetorderDao;
import com.youdanle.entity.Car;
import com.youdanle.entity.Getorder;

public class GetorderDaoImpl extends HibernateDaoSupport implements GetorderDao {

	@Override
	public List<Getorder> findAllGetorder() throws Exception {
		// TODO Auto-generated method stub
		String hql="from Getorder g left join fetch g.car left join fetch g.puborder";
		Query query = this.getSession().createQuery(hql);
		List<Getorder> getlist = query.list();
		return getlist;
	}

	@Override
	public Getorder findGetorderBygid(Getorder g) throws Exception {
		// TODO Auto-generated method stub
		String hql="from Getorder g left join fetch g.car where g.gid="+g.getGid();
		Query query = this.getSession().createQuery(hql);
		List<Getorder> getlist = query.list();
		return getlist.get(0);
	}

	@Override
	public int updateGetorder(Getorder g) throws Exception {
		// TODO Auto-generated method stub
		//¸üÐÂ×´Ì¬
		Getorder get =this.getHibernateTemplate().get(Getorder.class, g.getGid());
		get.setStatus(g.getStatus());
		this.getHibernateTemplate().update(get);
		return 0;
	}

	@Override
	public int addGetorder(Getorder g) throws Exception {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(g);
		return 1;
	}

	@Override
	public int findPage(Getorder g) throws Exception {
		// TODO Auto-generated method stub
		String sqlStr="select count(*) from Getorder g left join fetch g.car where g.car.cid="+g.getCar().getCid();
		Query query = this.getSession().createQuery(sqlStr);
		List<Object> object =query.list();
		
		int ts =Integer.valueOf(object.get(0).toString());
		int num =0;
		if(ts%3==0)
			num = ts/3;
		else
			num=ts/3+1;
		return num;
	}

	@Override
	public List<Getorder> findallByCidAndPage(Getorder g, Integer page) {
		// TODO Auto-generated method stub
		String hql="from Getorder g left join fetch g.car left join fetch g.puborder where g.car.cid="+g.getCar().getCid();
		Query query = this.getSession().createQuery(hql);
		query.setFirstResult((page-1)*3);
		query.setMaxResults(3);
		List<Getorder> glist = query.list();
		return glist;
	}
	@Override
	public List<Getorder> findallByPidAndPage(Getorder g, Integer page) {
		// TODO Auto-generated method stub
		String hql="from Getorder g left join fetch g.car where g.puborder.Pid="+g.getPuborder().getPid();
		Query query = this.getSession().createQuery(hql);
		query.setFirstResult((page-1)*3);
		query.setMaxResults(3);
		List<Getorder> glist = query.list();
		return glist;
	}

	@Override
	public int deleteGetorder(Getorder g) throws Exception {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(g);
		return 1;
	}
}
