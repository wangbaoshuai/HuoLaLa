package com.youdanle.biz.impl;

import com.youdanle.biz.ReplyBiz;
import com.youdanle.dao.ReplyDao;
import com.youdanle.entity.Reply;

public class ReplyBizImpl implements ReplyBiz {
	private ReplyDao replydao;
	@Override
	public int addReply(Reply r) throws Exception {
		// TODO Auto-generated method stub
		return replydao.addReply(r);
	}

	@Override
	public Reply findReplyByCid(Integer cid) throws Exception {
		// TODO Auto-generated method stub
		return replydao.findReplyByCid(cid);
	}

	@Override
	public Reply findReplyByComid(Integer comid) throws Exception {
		// TODO Auto-generated method stub
		return replydao.findReplyByComid(comid);
	}

	@Override
	public int deleteReplyByrid(Reply r) throws Exception {
		// TODO Auto-generated method stub
		return replydao.deleteReplyByrid(r);
	}

	public ReplyDao getReplydao() {
		return replydao;
	}

	public void setReplydao(ReplyDao replydao) {
		this.replydao = replydao;
	}

}
