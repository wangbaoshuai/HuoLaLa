package com.youdanle.dao;

import java.util.List;

import com.youdanle.entity.Forum;
import com.youdanle.entity.Reply;


public interface ForumDao {
	public int addForum(Forum f)throws Exception;
	public Forum findForumByCid(Integer cid)throws Exception;
	public Forum findForumByComid(Integer comid)throws Exception;
	public List<Forum> findAllForum()throws Exception;
	public int deleteForumByFid(Forum f)throws Exception;
	public Forum findForumByFid(Integer fid)throws Exception;
	//��ҳ��ѯ
	public int findPage()throws Exception;
	public List<Forum> findForumByPage(Integer nowpage)throws Exception;
}
