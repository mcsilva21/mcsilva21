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
				<label>도서명:</label>
				<input name="bookname" type="text" value="${item.orderid}">
			</div>
			<div>
				<label>출판사:</label>
				<input name="publisher" type="text" value="${item.custid}">
			</div>
			<div>
				<label>가격:</label>
				<input name="price" type="number" value="${item.bookid}">
			</div>
			<div>
				<label>가격:</label>
				<input name="price" type="number" value="${item.saleprice}">
			</div>
			<div>
				<label>주문일자:</label>
				<input name="price" type="number" value="${item.orderdate}">
			</div>
			<div>
				<input type="submit" value="변경">
			</div>			
		</form>
	</div>
</body>
</html>