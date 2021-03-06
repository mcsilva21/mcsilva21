<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link href="/resources/css/style.css" rel="stylesheet" />

<style type="text/css">

nav#nav { padding:10px; text-align:right;width: 1000px; margin: 0 auto;}
nav#nav ul li { display:inline-block;font-size:18px; font-weight:700; width: 18%;}
#header_box{width: 1000px; margin: 0 auto;}
#nav_box{width: 1000px; margin: 0 auto; height: 100px;}
section{width: 1000px; margin: 0 auto; border-top:2px solid #eee;}
#section-content iframe{padding: 15px}
footer{background: #333333; color: #8e9397; height: 50px; padding-top: 10px; text-align: center; font-size: 14px; width: 1000px; margin: 0 auto;}    
table{text-align: center;}
 
</style>

<title>Subject_cart</title>
</head>
<body>

<div id="root">

<header id="header">
<div id="header_box">
	<%@include file="../include/header.jsp" %>
</div>
</header>

<nav id="nav">
	<div id="nav_box">
		<%@ include file="include/nav.jsp" %>	
	</div>
</nav>	

<section>
<div>

	<table class="table" border="1">
		<thead class="thead-dark">
			<tr>
				<th scope="col" style="text-align: center;">강의번호</th>
				<th scope="col" style="text-align: center;">강의명</th>
				<th scope="col" style="text-align: center;">담당교수</th>
				<th scope="col" style="text-align: center;">학점</th>
				<th scope="col" style="text-align: center;">신청갯수</th>
				<th scope="col" style="text-align: center;">신청학점</th>			
			</tr>
		</thead>
		
		<tbody>
			<c:if test="${sessionScope.cart.isEmpty()}">
			<tr>			
				<td colspan="7">담긴 강의가 없습니다.</td>			
			</tr>
			</c:if>
			
			<c:forEach var="item" items="${sessionScope.cart}">
				<tr>
					<td>${item.key}</td>
					<td>${item.value.subname}</td>
					<td>${item.value.subpro}</td>
					<td>${item.value.subpoint}</td>
					<td>${item.value.amount}</td>
					<td>${item.value.subpoint * item.value.amount}</td>								
				</tr>
			</c:forEach>
		
		</tbody>
		
		
	</table>

<div><a href="list">목록</a></div>
<div><a href="order">신청하기</a></div>

</div>
</section>

	<footer id="footer">
	<div id="footer_box">
		<%@ include file="../include/footer.jsp" %>	
	</div>
	</footer>

</div>
</body>
</html>