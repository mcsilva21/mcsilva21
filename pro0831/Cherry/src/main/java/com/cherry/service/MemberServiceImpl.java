package com.cherry.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.cherry.domain.MemberVO;
import com.cherry.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberDAO dao;

	@Override
	public void signup(MemberVO vo) throws Exception {
		dao.signup(vo);
		
	}
//로그인
	@Override
	public MemberVO signin(MemberVO vo) throws Exception {
		return dao.sign(vo);
	}
	
//로그아웃
	
	@Override
	public void signout(HttpSession session) throws Exception {
		session.invalidate();
		
	}
	
	//회원가입
	
	
	

}
