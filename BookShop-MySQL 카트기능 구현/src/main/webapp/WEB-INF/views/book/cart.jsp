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

	<div>
		<h3>��ٱ���</h3>

		<div>
			<table border="1">
				<thead>
					<tr>
						<th>������ȣ</th>
						<th>������</th>
						<th>���ǻ�</th>
						<th>����</th>
						<th>�ֹ���</th>
						<th>�ֹ��ݾ�</th>

					</tr>
				</thead>

				<tbody>
					<c:if test="${sessionScope.cart.isEmpty()}">
						<tr>
							<td colspan="7">��ٱ��ϰ� ������ϴ�.</td>
						</tr>
					</c:if>

					<c:forEach var="item" items="${sessionScope.cart}">
						<tr>
							<td>${item.key}</td>
							<td>${item.value.bookname}</td>
							<td>${item.value.publisher}</td>
							<td>${item.value.price}</td>
							<td>${item.value.amount}</td>
							<td>${item.value.price * item.value.amount}</td>
						
						</tr>

					</c:forEach>


				</tbody>


			</table>


		</div>
<div><a href="order">�ֹ��ϱ�</a></div>
<div><a href="lisr">�������</a></div>

	</div>



</body>
</html>