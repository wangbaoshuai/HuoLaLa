package com.youdanle.action;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.youdanle.biz.PuborderBiz;
import com.youdanle.entity.Puborder;

public class AjaxAction extends ActionSupport {
	private Integer pid;
	private String result;
	private PuborderBiz pubbiz;
	private Puborder puborder;
	public String findonepub() throws Exception {
		System.out.println("ddddddddddddd");
		try{
			Map<String,Object> session = ActionContext.getContext().getSession();
			Puborder pub=new Puborder();
			pub.setPid(pid);
			Puborder findonepub = pubbiz.findPuborderByPid(pub);
			System.out.println("sssssssssssss");
			session.put("findonepub", findonepub);
//			//设置过滤
//			JsonConfig jc =new JsonConfig();
//			jc.setExcludes(new String[]{"district","houses"});
			result=JSONArray.fromObject(findonepub).toString();
			System.out.println("aaaaaaaaaaaaaaaaa");
			return "success";
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return "exception";
	}
	public String updatepub() throws Exception {
		try{
			//货主更新
			Puborder findonepub = pubbiz.findPuborderByPid(puborder);
			if(puborder.getImages()==null&&"".equals(puborder.getImages()))
				puborder.setImages(findonepub.getImages());
			pubbiz.updatePuborder(puborder);
			//刷新数据
			
			return "success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public PuborderBiz getPubbiz() {
		return pubbiz;
	}
	public void setPubbiz(PuborderBiz pubbiz) {
		this.pubbiz = pubbiz;
	}
	
}
