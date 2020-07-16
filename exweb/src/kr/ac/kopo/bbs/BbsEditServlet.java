package kr.ac.kopo.bbs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bbs/edit.do")

public class BbsEditServlet extends HttpServlet{		
	private BbsService bbsService = new BbsServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int no =Integer.parseInt(req.getParameter("bbsNo"));
		BbsVo vo = bbsService.selectBbs(no);
		req.setAttribute("bbsVo", vo);
		req.getRequestDispatcher("/WEB-INF/jsp/bbs/bbsEdit.jsp").forward(req, resp);			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
//		req.setCharacterEncoding("UTF-8");
		
		BbsVo vo = new BbsVo();
		vo.setBbsTitle(req.getParameter("bbsTitle"));
		vo.setBbsContent(req.getParameter("bbsContent"));
		vo.setBbsNo(Integer.parseInt(req.getParameter("bbsNo")));
		
		int num = bbsService.updateBbs(vo); 
		
		System.out.println(num + "개의 레코드 변경");	
		
		resp.sendRedirect(req.getContextPath()+ "/bbs/list.do");
	}
			
}


	
	
	
	
	
	
	
	
	
	

