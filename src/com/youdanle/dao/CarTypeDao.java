package com.youdanle.dao;

import java.util.List;

import com.youdanle.entity.Cartype;
import com.youdanle.entity.Goodtype;

public interface CarTypeDao {
	public List<Cartype> findAll()throws Exception;
}
