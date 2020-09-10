package com.cherry.persistence;

import java.util.List;

import com.cherry.domain.CategoryVO;
import com.cherry.domain.GoodsVO;
import com.cherry.domain.GoodsViewVO;
import com.cherry.domain.OrderListVO;
import com.cherry.domain.OrderVO;

public interface AdminDAO {
	
	//카테고리
	public List<CategoryVO> category() throws Exception;
	
	//상품 등록
	public void register(GoodsVO vo) throws Exception;
	
	//상품목록
	public List<GoodsViewVO> goodslist() throws Exception;
	
	
	//상품조회 + 키테고리 조인
	public GoodsViewVO goodsView(int gdsNum) throws Exception;
	
	//상품 수정
	public void goodsModify(GoodsVO vo) throws Exception;
	
	//상품 삭제
	public void goodsDelete(int gdsNum) throws Exception;
	
	//주문 목록
	public List<OrderVO> orderList() throws Exception;
	
	//특정 주문 목록
	public List<OrderListVO> orderView(OrderVO order) throws Exception;

	//배송 상태
	public void delivery(OrderVO order) throws Exception;
	
}
