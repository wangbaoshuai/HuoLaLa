package com.youdanle.biz;

import java.util.List;

import com.youdanle.entity.Car;

public interface CarBiz {
	public int addCar(Car car)throws Exception;
	public Car findCarByLogin(Car car)throws Exception;
	public Car findCarByLoginName(String lgname)throws Exception;
	public List<Car> findAllCar()throws Exception;
	public void updateCar(Car car) throws Exception;
	//������cha
	public List<Car> findCarByTerm(Car car)throws Exception;
	//������ҳ����
	public int findPage(Car p)throws Exception;
	public List<Car> findCarByTermAndPage(Car car,Integer page);
//	//������ҳ����(6��һҳ)
//	public int findAllPage()throws Exception;
//	public List<Car> findAllCar(Integer page);
}
