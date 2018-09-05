package com.youdanle.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.youdanle.biz.CarBiz;
import com.youdanle.biz.CarTypeBiz;
import com.youdanle.biz.CompanyBiz;
import com.youdanle.biz.GoodTypeBiz;
import com.youdanle.biz.NewBiz;
import com.youdanle.biz.PuborderBiz;
import com.youdanle.entity.Car;
import com.youdanle.entity.Cartype;
import com.youdanle.entity.Company;
import com.youdanle.entity.Goodtype;
import com.youdanle.entity.New;
import com.youdanle.entity.Puborder;

public class InitAction extends ActionSupport {

	private CarTypeBiz ctbiz;
	private GoodTypeBiz gtbiz;
	private PuborderBiz pubbiz;
	private NewBiz newbiz;
	private CarBiz carbiz;
	private CompanyBiz companybiz;
	public String findall() throws Exception {
		// TODO Auto-generated method stub
		try{
			
			List<Cartype> ctList= ctbiz.findAll();
			List<Goodtype> gtList= gtbiz.findAll();
			List<Car> carList= carbiz.findAllCar();
			List<Company> comList= companybiz.findAllCompany();
			List<Puborder> pubList=pubbiz.findAllPuborder();
			List<New> newList =newbiz.findAllNew();
			Map<String,Object> session = ActionContext.getContext().getSession();
			session.put("ctList", ctList);
			session.put("gtList", gtList);
			session.put("carList", carList);
			session.put("comList", comList);
			session.put("pubList", pubList);
			session.put("newList", newList);
			return "success";
		}catch(Exception e){
			e.printStackTrace();
			return "exception";
		}
	}
	public CarTypeBiz getCtbiz() {
		return ctbiz;
	}
	public void setCtbiz(CarTypeBiz ctbiz) {
		this.ctbiz = ctbiz;
	}
	public GoodTypeBiz getGtbiz() {
		return gtbiz;
	}
	public void setGtbiz(GoodTypeBiz gtbiz) {
		this.gtbiz = gtbiz;
	}
	public CarBiz getCarbiz() {
		return carbiz;
	}
	public void setCarbiz(CarBiz carbiz) {
		this.carbiz = carbiz;
	}
	public CompanyBiz getCompanybiz() {
		return companybiz;
	}
	public void setCompanybiz(CompanyBiz companybiz) {
		this.companybiz = companybiz;
	}
	public PuborderBiz getPubbiz() {
		return pubbiz;
	}
	public void setPubbiz(PuborderBiz pubbiz) {
		this.pubbiz = pubbiz;
	}
	public NewBiz getNewbiz() {
		return newbiz;
	}
	public void setNewbiz(NewBiz newbiz) {
		this.newbiz = newbiz;
	}
	
}
