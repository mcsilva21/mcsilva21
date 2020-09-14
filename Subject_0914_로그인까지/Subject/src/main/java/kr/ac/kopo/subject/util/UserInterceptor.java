package kr.ac.kopo.subject.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ac.kopo.subject.model.Student;

public class UserInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		Student student = (Student) session.getAttribute("user");
		
		if(student != null)
			return true;
		
		response.sendRedirect("/login");
		return false;
		
	}

}
