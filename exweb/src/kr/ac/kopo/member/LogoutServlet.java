package kr.ac.kopo.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/logout.do")
public class LogoutServlet extends HttpServlet {
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
	
//		session.setAttribute("loginUser", null); //세션에 "loginUser"라는 이름으로 null을 저장
//		session.removeAttribute("loginUser");//세션에 "loginUser"라는 이름으로 저장한 내용을 제거
		session.invalidate();//세션객체자체를 초기화(새로생성)=세션에 저장했던 모든 데이터 삭제
		resp.sendRedirect(req.getContextPath()+ "/member/login.do");
		
	}
	
	

}
