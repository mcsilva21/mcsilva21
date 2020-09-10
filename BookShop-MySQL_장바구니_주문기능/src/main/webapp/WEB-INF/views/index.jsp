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

	<div>
		<h3>마당서점</h3>
		<c:if test="${sessionScope.user == null}">
		
			<div>
				<a href="login">로그인</a>
			</div>
		</c:if>
		<c:if test="${sessionScope.user != null}">
			<div>
				<a href="logout">로그아웃</a> (${sessionScope.user.name})
			</div>
		
			</c:if>
	</div>
	<div>
	<ul>
			<li><a href="book/list">도서관리</a></li>
			<li><a href="customer/list">고객관리</a></li>
			<li><a href="orders/list">주문관리</a></li>
		</ul>
		
	</div>


</div>


</body>
</html>