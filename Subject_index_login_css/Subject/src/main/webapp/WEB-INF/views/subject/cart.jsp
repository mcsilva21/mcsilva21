<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<div>
	<h3>���ǹٱ���</h3>
</div>

<div>

	<table border="1">
		<thead>
			<tr>
				<th>���ǹ�ȣ</th>
				<th>���Ǹ�</th>
				<th>��米��</th>
				<th>����</th>
				<th>��û����</th>
				<th>��û����</th>			
			</tr>
		</thead>
		
		<tbody>
			<c:if test="${sessionScope.cart.isEmpty()}">
			<tr>			
				<td colspan="7">��� ���ǰ� �����ϴ�.</td>			
			</tr>
			</c:if>
			
			<c:forEach var="item" items="${sessionScope.cart}">
				<tr>
					<td>${item.key}</td>
					<td>${item.value.subname}</td>
					<td>${item.value.subpro}</td>
					<td>${item.value.subpoint}</td>
					<td>${item.value.amount}</td>
					<td>${item.value.subpoint * item.value.amount}</td>								
				</tr>
			</c:forEach>
		
		</tbody>
		
		
	</table>
<div><a href="list">���</a></div>
<div><a href="order">��û�ϱ�</a></div>

</div>

</body>
</html>