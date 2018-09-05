package com.youdanle.dao;

import java.util.List;

import com.youdanle.entity.Goodtype;

public interface GoodTypeDao {
	public List<Goodtype> findAll()throws Exception;
}
