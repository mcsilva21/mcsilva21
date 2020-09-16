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
		<h3>신청해서 공부하슈!</h3>
		<c:if test="${sessionScope.user == null}">
		
			<div>
				<a href="login">로그인</a>
			</div>
			
			<a href="student/add">학생등록</a>
			
		</c:if>
		<c:if test="${sessionScope.user != null}">
			<div>
				<a href="logout">로그아웃</a> 
				(${sessionScope.user.stuname})님 접속하셨습니다.
			</div>
		
			</c:if>
	</div>
	<div>
	<ul>
			<li><a href="subject/list">강의관리</a></li>
			<li><a href="student/list">학생관리</a></li>
			<li><a href="study/list">신청관리</a></li>
			<li><a href="bbs/list">게세판관리</a></li>
			
		</ul>
		
	</div>


</div>

</body>
</html>