package com.cherry.service;

import java.util.List;

import com.cherry.domain.GoodsViewVO;
import com.cherry.domain.ReplyListVO;
import com.cherry.domain.ReplyVO;

public interface ShopService {

	
	//카테고리 상품 리스트
	public List<GoodsViewVO> list(int cateCode, int level) throws Exception;
	
	//상품조회
	public GoodsViewVO goodsView(int gdsNum) throws Exception;
	
	//상품 소감(댓글) 작성
	public void registReply(ReplyVO reply) throws Exception;
		
	// 상품 소감(댓글) 리스트
	public List<ReplyListVO> replyList(int gdsNum) throws Exception;

}
