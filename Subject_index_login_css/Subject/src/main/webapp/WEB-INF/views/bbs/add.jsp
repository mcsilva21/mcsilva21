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
		<h1>도서등록</h1>
		<form method="post">
			<div>
				<label>도서명:</label>
				<input name="bbstitle" type="text">
			</div>
			<div>
				<label>담당교수:</label>
				<input name="bbscontent" type="text">
			</div>
			<div>
 				<label>작성자:</label>
				<input name="bbswriter" type="text" value="${user.stuid}">
			</div> 
		
			<div>
				<input type="submit" value="등록">
			</div>			
		</form>
	</div>
</body>
</html>