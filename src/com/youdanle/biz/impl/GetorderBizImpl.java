package com.youdanle.biz.impl;

import java.util.List;

import com.youdanle.biz.GetorderBiz;
import com.youdanle.biz.PuborderBiz;
import com.youdanle.dao.GetorderDao;
import com.youdanle.dao.PuborderDao;
import com.youdanle.entity.Getorder;
import com.youdanle.entity.Puborder;

public class GetorderBizImpl implements GetorderBiz {
	private GetorderDao getdao;
	private PuborderDao pubdao;
	@Override
	public List<Getorder> findAllGetorder() throws Exception {
		// TODO Auto-generated method stub
		return getdao.findAllGetorder();
	}

	@Override
	public Getorder findGetorderBygid(Getorder g) throws Exception {
		// TODO Auto-generated method stub
		
		return getdao.findGetorderBygid(g);
	}

	@Override
	public int updateGetorder(Getorder g) throws Exception {
		// TODO Auto-generated method stub
		//状态更改后，货物数量也改变，2是货主取消，3是货主接收
		if("2".equals(g.getStatus())){
			//商品sale减少weight
			//g中只有gid
			g=getdao.findGetorderBygid(g);
			Puborder pub =pubdao.findPuborderByPid(g.getPuborder());
			pub.setSale(pub.getSale()-g.getWeight());
			pubdao.updatePuborder(pub);
			g.setStatus("货主取消");
		}
		//接收
		if("3".equals(g.getStatus())){
			//g中只有gid
			g=getdao.findGetorderBygid(g);
			Puborder pub =pubdao.findPuborderByPid(g.getPuborder());
			pubdao.updatePuborder(pub);
			g.setStatus("货主接单");
		}
		getdao.updateGetorder(g);
		return 1;
	}

	@Override
	public int addGetorder(Getorder g) throws Exception {
		// TODO Auto-generated method stub
		
		//商品sale加weight
		Puborder pub =pubdao.findPuborderByPid(g.getPuborder());
		pub.setSale(pub.getSale()+g.getWeight());
		pubdao.updatePuborder(pub);
		//加订单
		getdao.addGetorder(g);
		return 1;
	}


	@Override
	public int findPage(Getorder g) throws Exception {
		// TODO Auto-generated method stub
		return getdao.findPage(g);
	}

	@Override
	public List<Getorder> findallByCidAndPage(Getorder g, Integer page) {
		// TODO Auto-generated method stub
		return getdao.findallByCidAndPage(g, page);
	}

	public PuborderDao getPubdao() {
		return pubdao;
	}

	public void setPubdao(PuborderDao pubdao) {
		this.pubdao = pubdao;
	}
	public GetorderDao getGetdao() {
		return getdao;
	}
	
	public void setGetdao(GetorderDao getdao) {
		this.getdao = getdao;
	}

	@Override
	public int deleteGetorder(Getorder g) throws Exception {
		// TODO Auto-generated method stub
		//状态更改后，货物数量也改变
		
		//商品sale减少weight
		//g中只有gid
		g=getdao.findGetorderBygid(g);
		Puborder pub =pubdao.findPuborderByPid(g.getPuborder());
		pub.setSale(pub.getSale()-g.getWeight());
		pubdao.updatePuborder(pub);
		//删除
		getdao.deleteGetorder(g);
		return 1;
	}
}
