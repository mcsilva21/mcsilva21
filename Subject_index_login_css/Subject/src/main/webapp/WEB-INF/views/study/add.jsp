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
				<label>학생번호:</label> <input name="stuid" type="text">
			</div>
			<div>
				<label>학점:</label> <input name="studypoint" type="number">
			</div>
			<div>
				<label>신청일자:</label> <input name="studydate" type="number">
			</div>
			<div>
				<input type="submit" value="등록">
			</div>
		</form>
	</div>
</body>
</html>