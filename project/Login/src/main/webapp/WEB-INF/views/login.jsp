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


		<h1>로그인 프로젝트</h1>
		
	
	<div>
		<form action="login" method="post">

			<div>
				<label>아이디:</label> <input type="text" name="id">
			</div>

			<div>
				<label>비밀번호:</label> <input type="text" name="passwd">
			</div>


			<div>
				<input type="submit" value="로그인">
			</div>

		</form>
	</div>


</body>
</html>