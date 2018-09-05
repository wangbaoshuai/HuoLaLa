package com.youdanle.biz;

import java.util.List;

import com.youdanle.entity.Manager;



public interface ManagerBiz {
	public void addManager(Manager m)throws Exception;
	public Manager findManagerByLogin(Manager m)throws Exception;
	public List<Manager> findAllManager()throws Exception;
	public void updateManager(Manager m) throws Exception;
}
