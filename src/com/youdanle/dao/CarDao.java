package com.youdanle.dao;

import java.util.List;

import com.youdanle.entity.Car;

public interface CarDao {
	public void addCar(Car car)throws Exception;
	public Car findCarByLogin(Car car)throws Exception;
	public Car findCarByLoginName(String lgname)throws Exception;
	public List<Car> findAllCar()throws Exception;
	public void updateCar(Car car) throws Exception;

	//按条件cha
	public List<Car> findCarByTerm(Car car)throws Exception;
	//按条分页件查(6个一页)
	public int findPage(Car p)throws Exception;
	public List<Car> findCarByTermAndPage(Car p,Integer page);
	//按条分页件查(6个一页)
	//public int findAllPage()throws Exception;
	//public List<Car> findAllCar(Integer page);
}
