package com.youdanle.biz;

import java.util.List;

import com.youdanle.entity.Company;

public interface CompanyBiz {
	public int addCompany(Company c)throws Exception;
	public Company findCompanyByLogin(Company c)throws Exception;
	public List<Company> findAllCompany()throws Exception;
	public void updateCompany(Company c) throws Exception;
	//按用户名查
	public Company findCompanyByLoginName(Company c)throws Exception;
	//按条分页件查(6个一页)
	public int findPage(Company c)throws Exception;
	public List<Company> findCompanyByTermAndPage(Company c,Integer page)throws Exception;
}
