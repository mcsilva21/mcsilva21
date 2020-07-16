<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/comm/menu.jsp"></jsp:include>
 
	<h1>로그인을 해주세요</h1>
	<form action='${pageContext.request.contextPath}/member/login.do' method="post">
		아이디: <input type="text" name="memId" /> <br/>
		비밀번호: <input type="password" name="memPass"/> <br/>	
		<input type="submit" value="로그인"/>	
				
	</form>
	
</body>
</html>