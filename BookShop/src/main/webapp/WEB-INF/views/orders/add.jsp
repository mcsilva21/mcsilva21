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
				<label>주문번호:</label> <input name="orderid" type="number">
			</div>
			<div>
				<label>고객번호:</label> <input name="custid" type="text">
			</div>
			<div>
				<label>판매가격:</label> <input name="bookid" type="text">
			</div>
			<div>
				<label>판매가격:</label> <input name="saleprice" type="number">
			</div>
			<div>
				<label>주문일자:</label> <input name="orderdate" type="number">
			</div>
			<div>
				<input type="submit" value="등록">
			</div>
		</form>
	</div>
</body>
</html>