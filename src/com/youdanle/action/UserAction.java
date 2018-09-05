package com.youdanle.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.youdanle.biz.CarBiz;
import com.youdanle.biz.CarTypeBiz;
import com.youdanle.biz.CompanyBiz;
import com.youdanle.biz.GetorderBiz;
import com.youdanle.biz.GoodTypeBiz;
import com.youdanle.biz.ManagerBiz;
import com.youdanle.biz.NewBiz;
import com.youdanle.biz.PuborderBiz;
import com.youdanle.entity.Car;
import com.youdanle.entity.Cartype;
import com.youdanle.entity.Company;
import com.youdanle.entity.Getorder;
import com.youdanle.entity.Goodtype;
import com.youdanle.entity.Manager;
import com.youdanle.entity.New;
import com.youdanle.entity.Puborder;

public class UserAction extends ActionSupport {
	private CarBiz carbiz;
	private ManagerBiz managerbiz;
	private CompanyBiz companybiz;
	private Car car;
	private Manager manager;
	private Company company;
	//admin登录初始化
	private CarTypeBiz ctbiz;
	private GoodTypeBiz gtbiz;
	private PuborderBiz pubbiz;
	private GetorderBiz getbiz;
	private NewBiz newbiz;
	//上传图片
	private File image;
	private String imageContentType;
	private String imageFileName;
	//载重Strign
	private String cloadStr;
	
	public String addcar() throws Exception {
		try{
			//添加图片
			String path =ServletActionContext.getRequest().getRealPath("/images/"+imageFileName);
			FileInputStream fis=new FileInputStream(image);
			FileOutputStream fos=new FileOutputStream(path);
			byte[] temp=new byte[1024];
			int size=-1;
			do{
				size=fis.read(temp);
				if(size!=-1)
					fos.write(temp, 0, size);
			}while(size!=-1);
			fos.flush();
			fos.close();
			fis.close();
			car.setImages(imageFileName);
			car.setType("2");
			int num=carbiz.addCar(car);
			if(num==1)
				return "addcar_success";
			else
				return "car已经存在";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String addcom() throws Exception {
		try{
			//添加图片
			String path =ServletActionContext.getRequest().getRealPath("/images/"+imageFileName);
			FileInputStream fis=new FileInputStream(image);
			FileOutputStream fos=new FileOutputStream(path);
			byte[] temp=new byte[1024];
			int size=-1;
			do{
				size=fis.read(temp);
				if(size!=-1)
					fos.write(temp, 0, size);
			}while(size!=-1);
			fos.flush();
			fos.close();
			fis.close();
			company.setImages(imageFileName);
			company.setType("1");
			int num=companybiz.addCompany(company);
			if(num==1)
				return "addcom_success";
			else
				return "com已经存在";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String carlogin() throws Exception {
		Car c = carbiz.findCarByLogin(car);
		if(c!=null){
			Map<String,Object> session =ActionContext.getContext().getSession();
			session.put("user", c);
			return  "login_success";
		}
		return "carlogin_error";
	}
	public String comlogin() throws Exception {
		Company com =companybiz.findCompanyByLogin(company);
		if(com!=null){
			Map<String,Object> session =ActionContext.getContext().getSession();
			session.put("user", com);
			return  "login_success";
		}
		return "comlogin_error";
	}
	//管理员登录初始化
	public String adminlogin() throws Exception {
		Manager admin = managerbiz.findManagerByLogin(manager);
		if(admin!=null){
			List<Cartype> ctList= ctbiz.findAll();
			List<Goodtype> gtList= gtbiz.findAll();
			List<Car> carList= carbiz.findAllCar();
			List<Company> comList= companybiz.findAllCompany();
			List<Puborder> pubList=pubbiz.findAllPuborder();
			List<New> newList =newbiz.findAllNew();
			List<Getorder> getList =getbiz.findAllGetorder();
			Map<String,Object> session = ActionContext.getContext().getSession();
			session.put("ctList", ctList);
			session.put("gtList", gtList);
			session.put("carList", carList);
			session.put("comList", comList);
			session.put("pubList", pubList);
			session.put("newList", newList);
			session.put("getList", getList);
			session.put("user", admin);
			return  "adminlogin_success";
		}
		return "adminlogin_error";
	}
	public String findCarByTerm() throws Exception {
		try{
			Map<String,Object> session =ActionContext.getContext().getSession();
			String[] loads=cloadStr.split("-");
			car.setMinload(Double.valueOf(loads[0]));
			car.setMaxload(Double.valueOf(loads[1]));
			List<Car> termCarList = carbiz.findCarByTerm(car);	
			session.put("termCarList", termCarList);
			return "findCarByTerm_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String updatecom() throws Exception {
		try{
			if(image!=null&&!"".equals(image)){
				//修改图片
				String path =ServletActionContext.getRequest().getRealPath("/images/"+imageFileName);
				FileInputStream fis=new FileInputStream(image);
				FileOutputStream fos=new FileOutputStream(path);
				byte[] temp=new byte[1024];
				int size=-1;
				do{
					size=fis.read(temp);
					if(size!=-1)
						fos.write(temp, 0, size);
				}while(size!=-1);
				fos.flush();
				fos.close();
				fis.close();
				company.setImages(imageFileName);
			}
			companybiz.updateCompany(company);
			return "updatecom_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String updatecar() throws Exception {
		try{
			if(image!=null&&!"".equals(image)){
				//修改图片
				String path =ServletActionContext.getRequest().getRealPath("/images/"+imageFileName);
				FileInputStream fis=new FileInputStream(image);
				FileOutputStream fos=new FileOutputStream(path);
				byte[] temp=new byte[1024];
				int size=-1;
				do{
					size=fis.read(temp);
					if(size!=-1)
						fos.write(temp, 0, size);
				}while(size!=-1);
				fos.flush();
				fos.close();
				fis.close();
				car.setImages(imageFileName);
			}
			carbiz.updateCar(car);
			return "updatecar_success";
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
	public ManagerBiz getManagerbiz() {
		return managerbiz;
	}
	public void setManagerbiz(ManagerBiz managerbiz) {
		this.managerbiz = managerbiz;
	}
	public CompanyBiz getCompanybiz() {
		return companybiz;
	}
	public void setCompanybiz(CompanyBiz companybiz) {
		this.companybiz = companybiz;
	}
	public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	public String getCloadStr() {
		return cloadStr;
	}
	public void setCloadStr(String cloadStr) {
		this.cloadStr = cloadStr;
	}
	public File getImage() {
		return image;
	}
	public void setImage(File image) {
		this.image = image;
	}
	public String getImageContentType() {
		return imageContentType;
	}
	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}
	public String getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
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
	public GetorderBiz getGetbiz() {
		return getbiz;
	}
	public void setGetbiz(GetorderBiz getbiz) {
		this.getbiz = getbiz;
	}
	
	
}
