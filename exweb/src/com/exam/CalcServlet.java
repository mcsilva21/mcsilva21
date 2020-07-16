package com.exam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cal.do")
public class CalcServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		
		int x = Integer.parseInt(req.getParameter("x"));	//파라미터 x(입력받은 값)를 바로 int형으로 변경해 변수 x에 저장
		int y = Integer.parseInt(req.getParameter("y"));	//파라미터 y(입력받은 값)를 바로 int형으로 변경해 변수 y에 저장
		String op = req.getParameter("op");					//파라미터 op(입력받은 값)를 String 변수 op에 저장
		double result = 0;									//계산된 결과 값 저장할 변수(0으로 초기화)
		
		if(op.equals("plu")) {			//입력받은 op값이 "plu"일 때
			result = x + y;				//x와 y값을 더한 결과 값을 result에 저장
			op = "+";					//이 때, String형 변수 op의 값을 "+"로 바꿔 출력할 때 편하게 함
		}
		else if(op.equals("min")) {
			result = x - y;
			op = "-";
		}
		else if(op.equals("mul")) {
			result = x * y;
			op = "*";
		}
		else if(op.equals("div")) {
			result = (double)x / y;		//나눠서 소수점 나오는 경우를 위해 x나 y중 하나를 double형으로 강제 타입 변환
			op = "/";
		}
		//op를 select 태그로 처리받으므로 else로 다른 값을 입력받은 예외를 처리할 필요 없음
		
		out.println("<!DOCTYPE html>                  	  ");
		out.println("<html>                           	  ");
		out.println("<head>                           	  ");
		out.println("<meta charset='UTF-8'>           	  ");
		out.println("<title>Insert title here</title> 	  ");
		out.println("</head>                          	  ");
		out.println("<body>                           	  ");
		
		out.printf("<h1>%d %s %d = " + result + "</h1>", x, op, y);	//<h1>태그 안에 "정수형 String형 정수형 = 정수형"로 입력받고
																	//입력받는 값은 x, op, y, result 순서로 입력하여 출력
																	//즉 "x op y = result"로 출력이 됨
																	//(이 때, op를 +,-,*,/로 설정하였기 때문에 출력시 바로 연산자형태로 출력됨)
		out.println("</body>                          	  ");
		out.println("</html>                          	  ");
	}
}