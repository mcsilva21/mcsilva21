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
		<h1>도서정보 변경</h1>
		<form method="post">			

			<div>
				<label>제목:</label>
				<input name="bbstitle" type="text" value="${item.bbstitle}">
			</div>
			<div>
				<label>내용:</label>
				<input name="bbscontent" type="text" value="${item.bbscontent}">
			</div>
			<div>
				<input type="submit" value="변경">
			</div>			
		</form>
	</div>
</body>
</html>