<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
     
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- <ul> -->
<%-- <c:if test="${user == null}"> --%>
<!--  <li> -->
<!--   <a href="/login"><button type="button" class="btn btn-primary">로그인</button></a> -->
<!--  </li> -->

<%--  </c:if> --%>
 
<%--  <c:if test="${sessionScope.user != null}"> --%>
<!-- 			<div style="color: #fff;"> -->
<!-- 				<a href="logout" style="color:#fff;" >로그아웃</a>  -->
<%-- 				(${sessionScope.user.stuname})님 접속하셨습니다. --%>
<!-- 			</div> -->
		
<%-- 			</c:if> --%>
 
<!--  </ul> -->
 
 	<div>
	<ul>
			<li><a href="/" style="text-decoration: none;">Home</a></li>
			<li><a href="subject/list" style="text-decoration: none;">강의목록</a></li>
			<li><a href="student/list" style="text-decoration: none;">학생관리</a></li>
			<li><a href="study/list" style="text-decoration: none;">수강신청관리</a></li>
			<li><a href="bbs/list" style="text-decoration: none;">게시판관리</a></li>			
		</ul>
		
	</div>