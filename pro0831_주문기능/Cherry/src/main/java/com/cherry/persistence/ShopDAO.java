package com.cherry.persistence;

import java.util.List;

import com.cherry.domain.CartListVO;
import com.cherry.domain.CartVO;
import com.cherry.domain.GoodsViewVO;
import com.cherry.domain.OrderDetailVO;
import com.cherry.domain.OrderListVO;
import com.cherry.domain.OrderVO;
import com.cherry.domain.ReplyListVO;
import com.cherry.domain.ReplyVO;

public interface ShopDAO {
	
	 
	//카테고리별 상품 리스트 1차
	public List<GoodsViewVO> list(int cateCode , int cateCodeRef) throws Exception;
	
	//카테고리별 상품 리스트 2차
	public List<GoodsViewVO> list(int cateCode) throws Exception;
	
	//상품조회
	public GoodsViewVO goodsView(int gdsNum) throws Exception;
		
	//상품 소감(댓글) 작성
	public void registReply(ReplyVO reply) throws Exception;

	//상품 소감(댓글) 리스트
	public List<ReplyListVO> replyList(int gdsNum) throws Exception;
	
	//아아디 체크
	public String idCheck(int repNum) throws Exception;

	//댓글 삭제
	public void deleteReply(ReplyVO reply) throws Exception;
	
	//상픔 소감(댓글) 수정
	public void modifyReply(ReplyVO reply) throws Exception;
	
	//카트 담기
	public void addCart(CartListVO cart) throws Exception;
	
	//카트 리스트
	public List<CartListVO> cartList(String userId) throws Exception;
	
	//카트 삭제
	public void deleteCart(CartVO cart) throws Exception;
	
	//주문정보
	public void orderInfo(OrderVO order) throws Exception;
	
	//주문 상세 정보
	public void orderInfo_Details(OrderDetailVO orderDetail) throws Exception;
	
	//카트 비우기
	public void cartAllDelete(String userId) throws Exception;

	//주묵 목록
	public List<OrderVO> orderList(OrderVO order) throws Exception;
	
	//특정 주문 목록
	public List<OrderListVO> orderView(OrderVO order) throws Exception;

}
