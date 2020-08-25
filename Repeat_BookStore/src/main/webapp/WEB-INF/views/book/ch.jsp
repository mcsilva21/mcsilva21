<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<thead>
			<tr>
				<th>图书号</th>
				<th>图书名</th>
				<th>出版社</th>
				<th>价格</th>
				<th>管理</th>
			
			</tr>
		</thead>

		<tbody>
			<c:choose>
				<c:when test="${list_ch.size() > 0}">
					<c:forEach var="item" items="${list_ch}">
						<tr>
							<td>${item.bookid}</td>
							<td>${item.bookname}</td>
							<td>${item.publisher}</td>
							<td>${item.price}</td>
							<td><a href="update?bookid=${item.bookid}">更改</a> <a
								href="delete?bookid=${item.bookid}">删除</a></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5">空数据</td>
					</tr>
				</c:otherwise>
			</c:choose>

		</tbody>

	</table>
	
	<div>
				<a href="add">登记</a>
			</div>
	

</body>
</html>