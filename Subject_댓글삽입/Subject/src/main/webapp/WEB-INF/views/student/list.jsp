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

<title>Student_list</title>
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
						<th scope="col" style="text-align: center;">학생번호</th>
						<th scope="col" style="text-align: center;">학생이름</th>
						<th scope="col" style="text-align: center;">학생비밀번호</th>
						<th scope="col" style="text-align: center;">학생부서</th>
						<th scope="col" style="text-align: center;">관리</th>
					</tr>
				</thead>

				<tbody>
							<c:choose>
							<c:when test="${list.size() > 0}">				
							<c:forEach var="item" items="${list}">			
								<tr>
									<td>${item.stuid}</td>
									<td>${item.stuname}</td>
									<td>${item.stupass}</td>
									<td>${item.studepart}</td>
									<td><a href="${item.stuid}/delete">삭제</a> <a href="${item.stuid}/update">변경</a>
									</td>
								</tr>				
							</c:forEach>
									</c:when>	
									<c:otherwise>
							<tr>
								<td colspan="4">등록 된 도서가 없습니다</td>
							</tr>						
						</c:otherwise>
									</c:choose>												
				</tbody>		
			</table>
			
			<div>
			<a href="add">등록</a>
			<a href="../">이전메뉴</a>
		</div>
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