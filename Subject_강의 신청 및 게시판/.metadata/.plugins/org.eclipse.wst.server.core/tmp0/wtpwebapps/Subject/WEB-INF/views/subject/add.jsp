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
				<input name="subname" type="text">
			</div>
			<div>
				<label>담당교수:</label>
				<input name="subpro" type="text">
			</div>
			<div>
				<label>학점:</label>
				<input name="subpoint" type="text">
			</div>			
			<div>
				<input type="submit" value="등록">
			</div>			
		</form>
	</div>
</body>
</html>