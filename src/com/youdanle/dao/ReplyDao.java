package com.youdanle.dao;

import java.util.List;

import com.youdanle.entity.Forum;
import com.youdanle.entity.Reply;

public interface ReplyDao {
	public int addReply(Reply r)throws Exception;
	public Reply findReplyByCid(Integer cid)throws Exception;
	public Reply findReplyByComid(Integer comid)throws Exception;
	public int deleteReplyByrid(Reply r)throws Exception;
	public int deleteReplyBfid(Integer fid)throws Exception;
}
