<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
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

<title>Study View</title>
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
		<table class="table table-bordered">
			<tbody class="thead-dark">
			<tr>
			<td colspan="2">주문번호</td>
			<td colspan="3">${item.studyid}</td>
			</tr>	
			<tr>
				<td colspan="2">학생</td>
				<td colspan="3">${item.stuname}</td>
			</tr>
			<tr>
				<td colspan="2">학점</td>
				<td colspan="3">${item.studypoint}</td>
			</tr>
				<tr>
				<td colspan="2">구매일자</td>
				<td colspan="3"><fmt:formatDate pattern="yyyy-MM-dd" value="${item.studydate}"/></td>
				
			</tr>
			<tr>
				<td colspan="5" style="font-weight: 700">상세내역</td>
			</tr>
			
			<tr>
				<td>상세번호</td>
				<td>강의명</td>
				<td>학점</td>
				<td>수량</td>
				<td>소계</td>
			</tr>
			<c:forEach var="item" items="${item.detail}">
			<tr>
				<td>${item.detailid}</td>
				<td>${item.subname}</td>
				<td>${item.subpoint}</td>
				<td>${item.amount}</td>
				<td>${item.subpoint * item.amount}</td>
			</tr>
			</c:forEach>
			<c:if test="${item.detail == null || item.detail.size () < 1}">
			<tr>
				<td colspan="5">주문내역이 없습니다.</td>
			</tr>
			</c:if>						
			</tbody>
			
		
		
		</table>
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