package com.youdanle.dao;

import java.util.List;

import com.youdanle.entity.Manager;



public interface ManagerDao {
	public void addManager(Manager m)throws Exception;
	public Manager findManagerByLogin(Manager m)throws Exception;
	public List<Manager> findAllManager()throws Exception;
	public void updateManager(Manager m) throws Exception;
}
