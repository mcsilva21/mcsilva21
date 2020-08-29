<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div>
	<h1>로그인 프로젝트</h1>
		<c:if test="${sessionScope.id != null}">
		<div>${sessionScope.id}님 환영합니다!~~</div>
		<div><a href="logout">로그아웃</a></div>
		</c:if>
		<c:if test="${sessionScope.id == null}">
		<div>
			<a href="login">로그인</a>
		</div>
		</c:if>
	</div>
	
	<div>
	<ul>
		<li><a href="book/list">도서관리</a></li>
		<li><a href="customer/list">고객관리</a></li>
		<li><a href="order/list">주문관리</a></li>
	</ul>	
	</div>
	
	
	
	
	
</body>
</html>