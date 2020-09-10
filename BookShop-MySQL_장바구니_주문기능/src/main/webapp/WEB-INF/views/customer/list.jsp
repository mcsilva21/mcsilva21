<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<div>

	<div>
		<h3>회원목록</h3>
	</div>
	
	<div>
	
		<table border="1"> 
			<thead>
				<tr>
					<th>고객번호</th>
					<th>고객명</th>
					<th>주소</th>
					<th>전호번호</th>
					<th>관리</th>
				</tr>
		</thead>
			<tbody>
				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.custid}</td>
						<td>${item.name}</td>
						<td>${item.address}</td>
						<td>${item.phone}</td>
						<td><a href="${item.custid}/delete">삭제</a> <a href="${item.custid}/update">수정</a></td>					
					</tr>
				</c:forEach>
				<c:if test="${list.size() < 1}">
				<td colspan="5">등록된 고객이 없습니다.</td>				
				</c:if>
				
			</tbody>
		
		
		
		</table>
		
			<div>
			<a href="add">등록</a>
			<a href="../">이전메뉴</a>
		</div>
	
	</div>
	
	
</div>



</body>
</html>