package com.cherry.persistence;

import com.cherry.domain.MemberVO;

public interface MemberDAO {
	
	//회원가입
	public void signup(MemberVO vo) throws Exception;
	
	//로그인
	public MemberVO  sign(MemberVO vo) throws Exception;
	

}
