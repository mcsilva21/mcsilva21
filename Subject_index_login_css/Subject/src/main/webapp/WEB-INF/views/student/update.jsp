<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h1>학생목록</h1>
		<form method="post">			
			<div>
				<label>고객명:</label>
				<input name="stuname" type="text" value="${item.stuname}">
			</div>
			<div>
				<label>비밀번호:</label>
				<input name="stupass" type="text" value="${item.stupass}">
			</div>
			<div>
				<label>부서:</label>
				<input name="studepart" type="text" value="${item.studepart}">
			</div>
			<div>
				<input type="submit" value="등록">
			</div>			
		</form>
	</div>
</body>
</html>