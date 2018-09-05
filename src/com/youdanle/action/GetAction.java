package com.youdanle.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.youdanle.biz.CarBiz;
import com.youdanle.biz.CompanyBiz;
import com.youdanle.biz.GetorderBiz;
import com.youdanle.entity.Company;
import com.youdanle.entity.Getorder;
import com.youdanle.entity.Puborder;

public class GetAction extends ActionSupport {
	private Getorder getorder;
	private GetorderBiz getbiz;
	private Integer nowpage;
	private String type;
	private CompanyBiz combiz;
	private CarBiz carbiz;
	public String findallByCidAndPage() throws Exception {
		try{
			Map<String,Object> session = ActionContext.getContext().getSession();
			int allPage =getbiz.findPage(getorder);
			if(nowpage==null||nowpage<1)
				nowpage=1;
			if(nowpage>allPage)
				nowpage=allPage;
			List<Getorder> getByCaridAndPage = getbiz.findallByCidAndPage(getorder, nowpage);
			session.put("allPage", allPage);
			session.put("getByCaridAndPage", getByCaridAndPage);
			return "success";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String findone() throws Exception {
		try{
			Getorder findoneget = getbiz.findGetorderBygid(getorder);
			Map<String,Object> session = ActionContext.getContext().getSession();
			session.put("findoneget", findoneget);
			return "findone_success";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String add() throws Exception {
		try{
			Date now=new Date();
			getorder.setTime(now);
			getbiz.addGetorder(getorder);
			//更新
			Map<String,Object> session = ActionContext.getContext().getSession();
			List<Getorder> getList =getbiz.findAllGetorder();
			session.put("getList", getList);
			//更新
			Company com =(Company)session.get("user");
			Company updatecom = combiz.findCompanyByLogin(com);
			session.put("user", updatecom);
			return "add_success";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String delete() throws Exception {
		try{
			//admin删
			if("admin".equals(type)){
				getbiz.deleteGetorder(getorder);
				//更新
				Map<String,Object> session = ActionContext.getContext().getSession();
				List<Getorder> getList =getbiz.findAllGetorder();
				session.put("getList", getList);
				//更新
				Company com =(Company)session.get("user");
				Company updatecom = combiz.findCompanyByLogin(com);
				session.put("user", updatecom);
				return "admindelete_success";
			}
			//删除
			getbiz.deleteGetorder(getorder);
			//更新
			Map<String,Object> session = ActionContext.getContext().getSession();
			List<Getorder> getList =getbiz.findAllGetorder();
			session.put("getList", getList);
			//更新
			Company com =(Company)session.get("user");
			Company updatecom = combiz.findCompanyByLogin(com);
			session.put("user", updatecom);
			return "delete_success";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String update() throws Exception {
		try{
			//更新状态
			getbiz.updateGetorder(getorder);
			//更新
			Map<String,Object> session = ActionContext.getContext().getSession();
			List<Getorder> getList =getbiz.findAllGetorder();
			session.put("getList", getList);
			//更新
			Company com =(Company)session.get("user");
			Company updatecom = combiz.findCompanyByLogin(com);
			session.put("user", updatecom);
			return "update_success";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public Getorder getGetorder() {
		return getorder;
	}
	public void setGetorder(Getorder getorder) {
		this.getorder = getorder;
	}
	public GetorderBiz getGetbiz() {
		return getbiz;
	}
	public void setGetbiz(GetorderBiz getbiz) {
		this.getbiz = getbiz;
	}
	public Integer getNowpage() {
		return nowpage;
	}
	public void setNowpage(Integer nowpage) {
		this.nowpage = nowpage;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public CompanyBiz getCombiz() {
		return combiz;
	}
	public void setCombiz(CompanyBiz combiz) {
		this.combiz = combiz;
	}
	public CarBiz getCarbiz() {
		return carbiz;
	}
	public void setCarbiz(CarBiz carbiz) {
		this.carbiz = carbiz;
	}
	
}
