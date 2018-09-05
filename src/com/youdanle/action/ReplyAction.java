package com.youdanle.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.youdanle.biz.ForumBiz;
import com.youdanle.biz.ReplyBiz;
import com.youdanle.entity.Car;
import com.youdanle.entity.Company;
import com.youdanle.entity.Forum;
import com.youdanle.entity.Getorder;
import com.youdanle.entity.Reply;

public class ReplyAction extends ActionSupport {
	private Reply reply;
	private ReplyBiz replybiz;
	private Integer nowpage;
	//admin
	private String type;
	public String findByPage() throws Exception {
		try{
			Map<String,Object> session = ActionContext.getContext().getSession();
			
			
			return "findByPage_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String add() throws Exception {
		try{
			Date now=new Date();
			reply.setRdate(now);
			replybiz.addReply(reply);
			//¸üÐÂ
		
			return "add_success";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String findall() throws Exception {
		try{
			
			return "findall_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String findone() throws Exception {
		try{
			
			return "findone_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String delete() throws Exception {
		try{
			replybiz.deleteReplyByrid(reply);
			if("admin".equals(type))
				return "admindelete_success";
			return "delete_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public Reply getReply() {
		return reply;
	}
	public void setReply(Reply reply) {
		this.reply = reply;
	}
	public ReplyBiz getReplybiz() {
		return replybiz;
	}
	public void setReplybiz(ReplyBiz replybiz) {
		this.replybiz = replybiz;
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
