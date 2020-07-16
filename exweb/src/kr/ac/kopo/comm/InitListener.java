package kr.ac.kopo.comm;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

//리스너(Listener) : 특정 사건(이벤트)이 발생하면, 자동으로 실행
// 요청객체,세션객체,서블릿컨텍스트객체가 생성 또는 소멸될 떄
// 요청객체,세션객체,서블릿컨텍스트객체에 속성을 추가,수정,삭제할 떄
// 기타 등등

//리스너 등록 방법
//(1)리스너 클래스에 @WebListener 사용
//(2) web.xml에 등록

//@WebListener
public class InitListener implements ServletContextListener{
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//서블릿 컨텍스트 객체가 처음 생성된 후 실행 = 웹 에플리케이션 처음 실행될때
		System.out.println("InitListene : contextInitialized 실행");
//		web.xml에 <context-param>으로  등록한 초기화파라미터값 가져오기
		String driver = sce.getServletContext().getInitParameter("driverClass");
		
		//오라클 jdbc 드라이버 클래스를 메모리에 로드
		try {
//			Class.forName("oracle.jdbc.OracleDriver"); // web-inf/lib에 .jbdc를 추가해야함.
			Class.forName(driver); // web-inf/lib에 .jbdc를 추가해야함.
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		//서블릿 컨텍스트 객체가  소멸되기 직전에 실행 = 웹 에플리케이션이 종료될 때
		
	}
	
	
	
}
