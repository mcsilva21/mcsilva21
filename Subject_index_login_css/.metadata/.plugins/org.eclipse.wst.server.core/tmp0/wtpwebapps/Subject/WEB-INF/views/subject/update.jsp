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
		<h1>과목변경</h1>
		<form method="post">			
			<div>
				<label>과목이름:</label>
				<input name="subname" type="text" value="${item.subname}">
			</div>
			<div>
				<label>담당교수:</label>
				<input name="subpro" type="text" value="${item.subpro}">
			</div>	
			<div>
				<label>담당교수:</label>
				<input name="subpoint" type="text" value="${item.subpoint}">
			</div>		
			<div>
				<input type="submit" value="변경">
			</div>			
		</form>
	</div>
</body>
</html>