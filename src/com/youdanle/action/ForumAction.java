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

public class ForumAction extends ActionSupport {
	private Forum forum;
	private Reply reply;
	private ForumBiz forumbiz;
	private ReplyBiz replybiz;
	private Integer nowpage;
	
	//判断用户类型
	private String type;
	public String findByPage() throws Exception {
		try{
			Map<String,Object> session = ActionContext.getContext().getSession();
			
			int allPage =forumbiz.findPage();
			if(nowpage==null||nowpage<1)
				nowpage=1;
			if(nowpage>allPage)
				nowpage=allPage;
			List<Forum> forumListByPage = forumbiz.findForumByPage(nowpage);
			session.put("allPage", allPage);
			session.put("forumListByPage", forumListByPage);
			if("admin".equals(type))
				return "adminfindByPage_success";
			return "findByPage_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String add() throws Exception {
		try{
			Date now=new Date();
			forum.setFdate(now);
			forumbiz.addForum(forum);
			return "add_success";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String delete() throws Exception {
		try{
			
			forumbiz.deleteForumByFid(forum);
			if("admin".equals(type))
				return "admindelete_success";
			return "delete_success";
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String findall() throws Exception {
		try{
			List<Forum> flist = forumbiz.findAllForum();
			Map<String,Object> session = ActionContext.getContext().getSession();
			session.put("flist", flist);
			return "findall_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public String findone() throws Exception {
		try{
			Forum findoneforum = forumbiz.findForumByFid(forum.getFid());
			Map<String,Object> session = ActionContext.getContext().getSession();
			session.put("findoneforum", findoneforum);
			if("admin".equals(type))
				return "adminfindone_success";
			return "findone_success";
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exception";
	}
	public Forum getForum() {
		return forum;
	}
	public void setForum(Forum forum) {
		this.forum = forum;
	}
	public Reply getReply() {
		return reply;
	}
	public void setReply(Reply reply) {
		this.reply = reply;
	}
	public ForumBiz getForumbiz() {
		return forumbiz;
	}
	public void setForumbiz(ForumBiz forumbiz) {
		this.forumbiz = forumbiz;
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
