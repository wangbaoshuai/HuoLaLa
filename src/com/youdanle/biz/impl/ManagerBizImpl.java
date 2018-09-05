package com.youdanle.biz.impl;

import java.util.List;

import com.youdanle.biz.ManagerBiz;
import com.youdanle.dao.ManagerDao;
import com.youdanle.entity.Manager;

public class ManagerBizImpl implements ManagerBiz {
	private ManagerDao managerdao;
	@Override
	public void addManager(Manager m) throws Exception {
		// TODO Auto-generated method stub
		managerdao.addManager(m);
	}

	@Override
	public Manager findManagerByLogin(Manager m) throws Exception {
		// TODO Auto-generated method stub
		return managerdao.findManagerByLogin(m);
	}

	@Override
	public List<Manager> findAllManager() throws Exception {
		// TODO Auto-generated method stub
		return managerdao.findAllManager();
	}

	@Override
	public void updateManager(Manager m) throws Exception {
		// TODO Auto-generated method stub

	}

	public ManagerDao getManagerdao() {
		return managerdao;
	}

	public void setManagerdao(ManagerDao managerdao) {
		this.managerdao = managerdao;
	}
	
}
