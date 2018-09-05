package com.youdanle.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.youdanle.dao.CarDao;
import com.youdanle.entity.Car;
import com.youdanle.entity.Puborder;

public class CarDaoImpl extends HibernateDaoSupport implements CarDao {

	@Override
	public void addCar(Car car) throws Exception {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(car);
	}

	@Override
	public Car findCarByLogin(Car car) throws Exception {
		// TODO Auto-generated method stub
		String hql="from Car c left join fetch c.cartype left join fetch c.forums left join fetch c.replies r left join fetch r.forum left join fetch c.getorders g left join fetch g.puborder where c.loginname=:lgname and c.loginpass=:lgpass";
		Query query = this.getSession().createQuery(hql);
		query.setString("lgname", car.getLoginname());
		query.setString("lgpass", car.getLoginpass());
		List<Car> clist = query.list();
		if(clist.size()>0)
			return clist.get(0);
		return null;
	}

	@Override
	public List<Car> findAllCar() throws Exception {
		// TODO Auto-generated method stub
		String hql="from Car c left join fetch c.cartype ";
		Query query = this.getSession().createQuery(hql);
		List<Car> clist = query.list();
		return clist;
	}

	@Override
	public void updateCar(Car car) throws Exception {
		// TODO Auto-generated method stub
		Car c =this.getHibernateTemplate().get(Car.class, car.getCid());
		if(car.getLoginpass()!=null&&!"".equals(car.getLoginpass()))
			c.setLoginpass(car.getLoginpass());
		if(car.getImages()!=null&&!"".equals(car.getImages()))
			c.setImages(car.getImages());
		if(car.getPhone()!=null&&!"".equals(car.getPhone()))
			c.setPhone(car.getPhone());
		if(car.getCaddr()!=null&&!"".equals(car.getCaddr()))
			c.setCaddr(car.getCaddr());
		if(car.getCload()!=null&&!"".equals(car.getCload()))
			c.setCload(car.getCload());
		if(car.getCsize()!=null&&!"".equals(car.getCsize()))
			c.setCsize(car.getCsize());
		if(car.getCnumber()!=null&&!"".equals(car.getCnumber()))
			c.setCnumber(car.getCnumber());
		if(car.getCstatus()!=null&&!"".equals(car.getCstatus()))
			c.setCstatus(car.getCstatus());
		this.getHibernateTemplate().update(c);
	}

	@Override
	public Car findCarByLoginName(String lgname) throws Exception {
		// TODO Auto-generated method stub
		String hql="from Car c left join fetch c.cartype where c.loginname=:lgname";
		Query query = this.getSession().createQuery(hql);
		query.setString("lgname", lgname);
		List<Car> clist = query.list();
		if(clist.size()>0)
			return clist.get(0);
		return null;
	}

	@Override
	public List<Car> findCarByTerm(Car car) throws Exception {
		// TODO Auto-generated method stub
		String hql="from Car c left join fetch c.cartype where c.cartype.ctid=:ctid and c.cload>=:minload and c.cload<=:maxload";
		Query query = this.getSession().createQuery(hql);
		query.setInteger("ctid", car.getCartype().getCtid());
		query.setDouble("minload", car.getMinload());
		query.setDouble("maxload", car.getMaxload());
		List<Car> clist = query.list();
		return clist;
	}

	@Override
	public int findPage(Car p) throws Exception {
		// TODO Auto-generated method stub
		String sqlStr="select count(*) from Car c  where 1=1";
		if(p!=null){
			if(p.getCartype().getCtid()!=null&&!"".equals(p.getCartype().getCtid()))
				sqlStr+=" and c.cartype.ctid="+p.getCartype().getCtid();
			if(p.getMaxload()!=null&&!"".equals(p.getMaxload()))
				sqlStr+=" and c.cload<="+p.getMaxload();
			if(p.getMinload()!=null&&!"".equals(p.getMinload()))
				sqlStr+=" and c.cload>="+p.getMinload();
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
	public List<Car> findCarByTermAndPage(Car p, Integer page) {
		// TODO Auto-generated method stub
		String hql="from Car c left join fetch c.cartype where 1=1";
		if(p!=null){
			if(p.getCartype().getCtid()!=null&&!"".equals(p.getCartype().getCtid()))
				hql+=" and c.cartype.ctid="+p.getCartype().getCtid();
			if(p.getMaxload()!=null&&!"".equals(p.getMaxload()))
				hql+=" and c.cload<="+p.getMaxload();
			if(p.getMinload()!=null&&!"".equals(p.getMinload()))
				hql+=" and c.cload>="+p.getMinload();
		}
		Query query = this.getSession().createQuery(hql);
		query.setFirstResult((page-1)*6);
		query.setMaxResults(6);
		List<Car> clist = query.list();
		return clist;

	}


}
