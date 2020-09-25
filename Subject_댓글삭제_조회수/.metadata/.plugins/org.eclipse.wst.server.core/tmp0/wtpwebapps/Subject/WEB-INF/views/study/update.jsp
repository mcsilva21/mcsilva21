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
				<label>학점:</label>
				<input name="price" type="number" value="${item.studypoint}">
			</div>
			<div>
				<label>신청일자:</label>
				<input name="price" type="number" value="${item.studydate}">
			</div>
			<div>
				<input type="submit" value="변경">
			</div>			
		</form>
	</div>
</body>
</html>