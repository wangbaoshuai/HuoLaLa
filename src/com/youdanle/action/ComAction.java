package com.youdanle.action;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.youdanle.biz.CarBiz;
import com.youdanle.biz.CompanyBiz;
import com.youdanle.entity.Car;
import com.youdanle.entity.Company;
import com.youdanle.entity.Puborder;

public class ComAction extends ActionSupport {
	private CompanyBiz combiz;
	private Company company;
	private Integer nowpage;
	//ÅÐ¶Ïadmin
	private String type;
	public String findByTerm() throws Exception {
		try{
			
			Map<String,Object> session = ActionContext.getContext().getSession();
			int allPage =combiz.findPage(company);
			if(nowpage==null||nowpage<1)
				nowpage=1;
			if(nowpage>allPage)
				nowpage=allPage;
			List<Company> comListByTerm = combiz.findCompanyByTermAndPage(company, nowpage);
			session.put("allPage", allPage);
			session.put("comListByTerm", comListByTerm);
			//admin
			if("admin".equals(type)){
				return "adminfindByTerm_success";
			}
			
			return "findByTerm_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	
	public String findone() throws Exception {
		try{
			System.out.println("laile ");
			Company findonecom = combiz.findCompanyByLoginName(company);
			Map<String,Object> session = ActionContext.getContext().getSession();
			session.put("findonecom", findonecom);
			if("admin".equals(type))
				return "adminfindone_success";
			return "findone_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String update() throws Exception {
		try{
			Company com=combiz.findCompanyByLoginName(company);
			if("2".equals(com.getCstatus()))
				com.setCstatus("1");
			else
				com.setCstatus("2");
			combiz.updateCompany(com);
			//Ë¢ÐÂÊý¾Ý
			Map<String,Object> session = ActionContext.getContext().getSession();
			List<Company> comList=combiz.findAllCompany();
			session.put("comList", comList);
			return "adminupdate_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public CompanyBiz getCombiz() {
		return combiz;
	}
	public void setCombiz(CompanyBiz combiz) {
		this.combiz = combiz;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
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
	
	
}
