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
		<h1>회원목록</h1>
		<form method="post">
			<div>
				<label>고객번호:</label>
				<input name="custid" type="number">
			</div>
			<div>
				<label>고객명:</label>
				<input name="name" type="text">
			</div>
			<div>
				<label>주소:</label>
				<input name="address" type="text">
			</div>
			<div>
				<label>전회번호:</label>
				<input name="phone" type="text">
			</div>
			<div>
				<input type="submit" value="등록">
			</div>			
		</form>
	</div>
</body>
</html>