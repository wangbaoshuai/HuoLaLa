package com.youdanle.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.youdanle.biz.PuborderBiz;
import com.youdanle.entity.Puborder;

public class PubAction extends ActionSupport {
	private PuborderBiz pubbiz;
	private Puborder puborder;
	private Integer nowpage;
	//admin或货主
	private String type;
	//上传图片
	private File image;
	private String imageContentType;
	private String imageFileName;
	public String findByTerm() throws Exception {
		try{
			Map<String,Object> session = ActionContext.getContext().getSession();
			int allPage =pubbiz.findPage(puborder);
			if(nowpage==null||nowpage<1)
				nowpage=1;
			if(nowpage>allPage)
				nowpage=allPage;
			List<Puborder> pubListByTerm = pubbiz.findPuborderByTermAndPage(puborder, nowpage);
			session.put("allPage", allPage);
			session.put("pubListByTerm", pubListByTerm);
			return "success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String findone() throws Exception {
		try{
			Puborder findonepub = pubbiz.findPuborderByPid(puborder);
			Map<String,Object> session = ActionContext.getContext().getSession();
			session.put("findonepub", findonepub);
			//admin
			if("admin".equals(type))
				return "adminfindone_success";
			if("update".equals(type))
				return "findone_update";
			return "findone_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String add() throws Exception {
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
			puborder.setImages(imageFileName);
			//设时间
			puborder.setStartime(new Date());
			//sale==0
			puborder.setSale(0.0);
			pubbiz.addPuborder(puborder);
			//刷新数据
			Map<String,Object> session = ActionContext.getContext().getSession();
			List<Puborder> pubList=pubbiz.findAllPuborder();
			session.put("pubList", pubList);
			return "add_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String update() throws Exception {
		try{
			Puborder findonepub = pubbiz.findPuborderByPid(puborder);
			if("admin".equals(type)){
				//下架设二，admin
				if("2".equals(findonepub.getStatus()))
					findonepub.setStatus("1");
				else
					findonepub.setStatus("2");
				pubbiz.updatePuborder(findonepub);
				//刷新数据
				Map<String,Object> session = ActionContext.getContext().getSession();
				List<Puborder> pubList=pubbiz.findAllPuborder();
				session.put("pubList", pubList);
				return "adminupdate_success";
			}
			//货主更新
			
			if(puborder.getImages()==null&&"".equals(puborder.getImages()))
				puborder.setImages(findonepub.getImages());
			pubbiz.updatePuborder(puborder);
			//刷新数据
			Map<String,Object> session = ActionContext.getContext().getSession();
			List<Puborder> pubList=pubbiz.findAllPuborder();
			session.put("pubList", pubList);
			return "update_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public PuborderBiz getPubbiz() {
		return pubbiz;
	}

	public void setPubbiz(PuborderBiz pubbiz) {
		this.pubbiz = pubbiz;
	}
	public Puborder getPuborder() {
		return puborder;
	}
	public void setPuborder(Puborder puborder) {
		this.puborder = puborder;
	}
	public Integer getNowpage() {
		return nowpage;
	}
	public void setNowpage(Integer nowpage) {
		this.nowpage = nowpage;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
