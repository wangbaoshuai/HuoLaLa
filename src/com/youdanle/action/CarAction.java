package com.youdanle.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.youdanle.biz.CarBiz;
import com.youdanle.entity.Car;
import com.youdanle.entity.Company;

public class CarAction extends ActionSupport {
	private CarBiz carbiz;
	private Car car;
	private Integer nowpage;
	//载重Strign
	private String cloadStr;
	public String findByTerm() throws Exception {
		try{
			Map<String,Object> session = ActionContext.getContext().getSession();
			if(cloadStr!=null){
				String[] loads=cloadStr.split("-");
				car.setMinload(Double.valueOf(loads[0]));
				car.setMaxload(Double.valueOf(loads[1]));
			}
			int allPage =carbiz.findPage(car);
			if(nowpage==null||nowpage<1)
				nowpage=1;
			if(nowpage>allPage)
				nowpage=allPage;
			List<Car> carListByTerm = carbiz.findCarByTermAndPage(car, nowpage);
			session.put("allPage", allPage);
			session.put("carListByTerm", carListByTerm);
			return "success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	
	public String findone() throws Exception {
		Map<String,Object> session = ActionContext.getContext().getSession();
		Car findonecar =carbiz.findCarByLoginName(car.getLoginname());
		session.put("findonecar", findonecar);
		return "findone_success";
	}
	public String update() throws Exception {
		try{
			car=carbiz.findCarByLoginName(car.getLoginname());
			if("2".equals(car.getCstatus()))
				car.setCstatus("1");
			else
				car.setCstatus("2");
			carbiz.updateCar(car);
			//刷新数据
			Map<String,Object> session = ActionContext.getContext().getSession();
			List<Car> carList=carbiz.findAllCar();
			session.put("carList", carList);
			return "adminupdate_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public CarBiz getCarbiz() {
		return carbiz;
	}
	public void setCarbiz(CarBiz carbiz) {
		this.carbiz = carbiz;
	}
	public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	public Integer getNowpage() {
		return nowpage;
	}
	public void setNowpage(Integer nowpage) {
		this.nowpage = nowpage;
	}
	public String getCloadStr() {
		return cloadStr;
	}
	public void setCloadStr(String cloadStr) {
		this.cloadStr = cloadStr;
	}
	
}
