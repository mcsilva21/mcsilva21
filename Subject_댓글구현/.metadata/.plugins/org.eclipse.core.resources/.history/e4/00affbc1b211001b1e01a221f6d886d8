<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<h1 class="title">
	<a href="/" style= "text-decoration: none;">Click & Study</a>
</h1>

<ul>
<c:if test="${user == null}">
 <li>
  <a href="/login"><button type="button" class="btn btn-primary">로그인</button></a>
 </li>

 </c:if>
 
 <c:if test="${sessionScope.user != null}">
			<div style="color: #fff;">
				<a href="logout" style="color:#fff;" >로그아웃</a> 
				(${sessionScope.user.stuname})님 접속하셨습니다.
			</div>
		
			</c:if>
 
 </ul>

</body>
</html>