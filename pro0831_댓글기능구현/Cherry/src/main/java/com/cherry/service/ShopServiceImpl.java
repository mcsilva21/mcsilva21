package com.cherry.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cherry.domain.GoodsViewVO;
import com.cherry.domain.ReplyListVO;
import com.cherry.domain.ReplyVO;
import com.cherry.persistence.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService {
	
	@Inject
	private ShopDAO dao;

	@Override
	public List<GoodsViewVO> list(int cateCode, int level) throws Exception {
		
		int cateCodeRef = 0;
		
		if(level ==1 ) { //1차 분류
			cateCodeRef = cateCode;
			return dao.list(cateCode, cateCodeRef);
		
		}else { //2차 분류
			return dao.list(cateCode);
		}
	}

	//상품조회
	@Override
	public GoodsViewVO goodsView(int gdsNum) throws Exception {
		
		return dao.goodsView(gdsNum);
	}

	//상품 소감(댓글) 작성
	@Override
	public void registReply(ReplyVO reply) throws Exception {
		dao.registReply(reply);
		
	}
	//상품 소감(댓글) 리스트
	@Override
	public List<ReplyListVO> replyList(int gdsNum) throws Exception {
		
		return dao.replyList(gdsNum);
	}
	
	

}
