package com.youdanle.biz.impl;

import java.util.List;

import com.youdanle.biz.CompanyBiz;
import com.youdanle.dao.CompanyDao;
import com.youdanle.entity.Company;

public class CompanyBizImpl implements CompanyBiz {
	private CompanyDao companydao;
	@Override
	public int addCompany(Company c) throws Exception {
		// TODO Auto-generated method stub
		Company com =companydao.findCompanyByLoginName(c);
		if(com!=null)
			return 0;
		else
			companydao.addCompany(c);
		return 1;
	}

	@Override
	public Company findCompanyByLogin(Company c) throws Exception {
		// TODO Auto-generated method stub
		return companydao.findCompanyByLogin(c);
	}

	@Override
	public List<Company> findAllCompany() throws Exception {
		// TODO Auto-generated method stub
		return companydao.findAllCompany();
	}

	@Override
	public void updateCompany(Company c) throws Exception {
		// TODO Auto-generated method stub
		companydao.updateCompany(c);
	}

	public CompanyDao getCompanydao() {
		return companydao;
	}

	public void setCompanydao(CompanyDao companydao) {
		this.companydao = companydao;
	}

	@Override
	public int findPage(Company c) throws Exception {
		// TODO Auto-generated method stub
		return companydao.findPage(c);
	}

	@Override
	public List<Company> findCompanyByTermAndPage(Company c, Integer page)
			throws Exception {
		// TODO Auto-generated method stub
		return companydao.findCompanyByTermAndPage(c, page);
	}

	@Override
	public Company findCompanyByLoginName(Company c) throws Exception {
		// TODO Auto-generated method stub
		return companydao.findCompanyByLoginName(c);
	}

}
