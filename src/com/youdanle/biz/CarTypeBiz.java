package com.youdanle.biz;

import java.util.List;

import com.youdanle.dao.CarDao;
import com.youdanle.dao.CarTypeDao;
import com.youdanle.entity.Cartype;
import com.youdanle.entity.Goodtype;

public interface CarTypeBiz {
	public List<Cartype> findAll()throws Exception;
}
