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


		<h1>�α��� ������Ʈ</h1>
		
	
	<div>
		<form action="login" method="post">

			<div>
				<label>���̵�:</label> <input type="text" name="id">
			</div>

			<div>
				<label>��й�ȣ:</label> <input type="text" name="passwd">
			</div>


			<div>
				<input type="submit" value="�α���">
			</div>

		</form>
	</div>


</body>
</html>