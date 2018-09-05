package com.youdanle.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.youdanle.dao.CompanyDao;
import com.youdanle.entity.Car;
import com.youdanle.entity.Company;
import com.youdanle.entity.Manager;

public class CompanyDaoImpl extends HibernateDaoSupport implements CompanyDao {

	@Override
	public void addCompany(Company c) throws Exception {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(c);
	}

	@Override
	public Company findCompanyByLogin(Company c) throws Exception {
		// TODO Auto-generated method stub
		String hql="from Company c left join fetch c.puborders p left join fetch c.forums left join fetch c.replies r left join fetch r.forum left join fetch p.getorders g left join fetch g.puborder where c.loginname=:lgname and c.loginpass=:lgpass";
		Query query = this.getSession().createQuery(hql);
		query.setString("lgname", c.getLoginname());
		query.setString("lgpass", c.getLoginpass());
		List<Company> clist = query.list();
		if(clist.size()>0)
			return clist.get(0);
		return null;
	}

	@Override
	public List<Company> findAllCompany() throws Exception {
		// TODO Auto-generated method stub
		String hql="from Company";
		Query query = this.getSession().createQuery(hql);
		List<Company> clist = query.list();
		return clist;
	}

	@Override
	public void updateCompany(Company c) throws Exception {
		// TODO Auto-generated method stub
		Company com=this.getHibernateTemplate().get(Company.class, c.getCid());
		if(c.getLoginpass()!=null&&!"".equals(c.getLoginpass()))
			com.setLoginpass(c.getLoginpass());
		if(c.getImages()!=null&&!"".equals(c.getImages()))
			com.setImages(c.getImages());
		if(c.getPhone()!=null&&!"".equals(c.getPhone()))
			com.setPhone(c.getPhone());
		if(c.getCaddr()!=null&&!"".equals(c.getCaddr()))
			com.setCaddr(c.getCaddr());
		if(c.getCintro()!=null&&!"".equals(c.getCintro()))
			com.setCintro(c.getCintro());
		if(c.getCstatus()!=null&&!"".equals(c.getCstatus()))
			com.setCstatus(c.getCstatus());
		this.getHibernateTemplate().update(com);
	}

	@Override
	public Company findCompanyByLoginName(Company c) throws Exception {
		// TODO Auto-generated method stub
		String hql="from Company c left join fetch c.puborders p left join fetch c.forums left join fetch c.replies r left join fetch r.forum left join fetch p.getorders g left join fetch g.puborder where c.loginname=:lgname";
		Query query = this.getSession().createQuery(hql);
		query.setString("lgname", c.getLoginname());
		List<Company> clist = query.list();
		if(clist.size()>0)
			return clist.get(0);
		return null;
	}

	@Override
	public int findPage(Company c) throws Exception {
		// TODO Auto-generated method stub
		String sqlStr="select count(*) from Company c where 1=1";
		if(c!=null){
			if(c.getCaddr()!=null&&!"".equals(c.getCaddr()))
				sqlStr+=" and c.caddr like '%"+c.getCaddr()+"%'";
			if(c.getCname()!=null&&!"".equals(c.getCname()))
				sqlStr+=" and c.cname like '%"+c.getCname()+"%'";
		}
		Query query = this.getSession().createQuery(sqlStr);
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
	public List<Company> findCompanyByTermAndPage(Company c, Integer page) {
		// TODO Auto-generated method stub
		String hql="from Company c left join fetch c.puborders where 1=1";
		if(c!=null){
			if(c.getCaddr()!=null&&!"".equals(c.getCaddr()))
				hql+=" and c.caddr like '%"+c.getCaddr()+"%'";
			if(c.getCname()!=null&&!"".equals(c.getCname()))
				hql+=" and c.cname like '%"+c.getCname()+"%'";
		}
		Query query = this.getSession().createQuery(hql);
		query.setFirstResult((page-1)*6);
		query.setMaxResults(6);
		List<Company> clist = query.list();
		return clist;
	}

}
