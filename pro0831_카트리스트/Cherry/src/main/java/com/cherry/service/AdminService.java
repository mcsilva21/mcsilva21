package com.cherry.service;

import java.util.List;

import com.cherry.domain.CategoryVO;
import com.cherry.domain.GoodsVO;
import com.cherry.domain.GoodsViewVO;

public interface AdminService {

	//카테고리
	
	public List<CategoryVO> category() throws Exception;
	
	//상품등록
	public void register(GoodsVO vo) throws Exception;
	
	//싱품목록
	public List<GoodsViewVO> goodlist() throws Exception;
	
	//상품 조회
	public GoodsViewVO goodsView(int gdsNum) throws Exception;
	
	//상품 수정
	public void goodsModify(GoodsVO vo) throws Exception;

	//상품삭제
	public void goodsDelete(int gdsNum) throws Exception;
	
}
