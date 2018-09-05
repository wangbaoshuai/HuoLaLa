package com.youdanle.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.youdanle.dao.PuborderDao;
import com.youdanle.entity.Car;
import com.youdanle.entity.Puborder;

public class PuborderDaoImpl extends HibernateDaoSupport implements PuborderDao {

	@Override
	public List<Puborder> findAllPuborder() throws Exception {
		// TODO Auto-generated method stub
		String hql="from Puborder p left join fetch p.company left join fetch p.goodtype";
		Query query = this.getSession().createQuery(hql);
		List<Puborder> publist = query.list();
		return publist;
	}

	@Override
	public Puborder findPuborderByPid(Puborder p) throws Exception {
		// TODO Auto-generated method stub
		String hql="from Puborder  p left join fetch p.company left join fetch p.goodtype  where p.pid="+p.getPid();
		Query query = this.getSession().createQuery(hql);
		List<Puborder> publist = query.list();
		if(publist.size()>0)
			return publist.get(0);
		return null;
	}

	@Override
	public int updatePuborder(Puborder p) throws Exception {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(p);
		return 1;
	}

	@Override
	public int addPuborder(Puborder p) throws Exception {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(p);
		return 1;
	}

	@Override
	public List<Puborder> findPuborderByTerm(Puborder p) throws Exception {
		// TODO Auto-generated method stub
		String hql="from Puborder  p left join fetch p.company left join fetch p.goodtype  where p.staraddr like '%"+p.getStaraddr()+"%' and p.finishaddr like '%"+p.getFinishaddr()+"%'";
		Query query = this.getSession().createQuery(hql);
		List<Puborder> publist = query.list();
		return publist;
	}

	@Override
	public int findPage(Puborder p) throws Exception {
		// TODO Auto-generated method stub
		String hql="select count(*) from Puborder p where 1=1";
		if(p!=null){
			if(p.getStaraddr()!=null&&!"".equals(p.getStaraddr()))
				hql+=" and p.staraddr like '%"+p.getStaraddr()+"%'";
			if(p.getFinishaddr()!=null&&!"".equals(p.getFinishaddr()))
				hql+=" and p.finishaddr like '%"+p.getFinishaddr()+"%'";
		}
		Query query = this.getSession().createQuery(hql);
		List<Object> object =query.list();
		
		int ts =Integer.valueOf(object.get(0).toString());
		int num =0;
		if(ts%6==0)
			num = ts/6;
		else
			num=ts/6+1;
		return num;
	}

	@Override
	public List<Puborder> findPuborderByTermAndPage(Puborder p, Integer page) {
		// TODO Auto-generated method stub
		String hql="from Puborder  p left join fetch p.company left join fetch p.goodtype where 1=1";
		if(p!=null){
			if(p.getStaraddr()!=null&&!"".equals(p.getStaraddr()))
				hql+=" and p.staraddr like '%"+p.getStaraddr()+"%'";
			if(p.getFinishaddr()!=null&&!"".equals(p.getFinishaddr()))
				hql+=" and p.finishaddr like '%"+p.getFinishaddr()+"%'";
		}
		Query query = this.getSession().createQuery(hql);
		query.setFirstResult((page-1)*6);
		query.setMaxResults(6);
		List<Puborder> publist = query.list();
		return publist;
	}

}
