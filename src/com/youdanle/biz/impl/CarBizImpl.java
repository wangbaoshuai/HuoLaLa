package com.youdanle.biz.impl;

import java.util.List;

import com.youdanle.biz.CarBiz;
import com.youdanle.dao.CarDao;
import com.youdanle.entity.Car;

public class CarBizImpl implements CarBiz {
	private CarDao cardao;
	@Override
	public int addCar(Car car) throws Exception {
		// TODO Auto-generated method stub
		//先查是否存在该用户名
		Car c =cardao.findCarByLoginName(car.getLoginname());
		if(c!=null)
			return 0;
		else{
			cardao.addCar(car);
		}
		return 1;
	}

	@Override
	public Car findCarByLogin(Car car) throws Exception {
		// TODO Auto-generated method stub
		return cardao.findCarByLogin(car);
	}

	@Override
	public List<Car> findAllCar() throws Exception {
		// TODO Auto-generated method stub
		return cardao.findAllCar();
	}

	@Override
	public void updateCar(Car car) throws Exception {
		// TODO Auto-generated method stub
		cardao.updateCar(car);
	}

	public CarDao getCardao() {
		return cardao;
	}

	public void setCardao(CarDao cardao) {
		this.cardao = cardao;
	}

	@Override
	public List<Car> findCarByTerm(Car car) throws Exception {
		// TODO Auto-generated method stub
		return cardao.findCarByTerm(car);
	}

	@Override
	public int findPage(Car p) throws Exception {
		// TODO Auto-generated method stub
		return cardao.findPage(p);
	}

	@Override
	public List<Car> findCarByTermAndPage(Car car, Integer page) {
		// TODO Auto-generated method stub
		return cardao.findCarByTermAndPage(car, page);
	}

	@Override
	public Car findCarByLoginName(String lgname) throws Exception {
		// TODO Auto-generated method stub
		return cardao.findCarByLoginName(lgname);
	}


	
}
