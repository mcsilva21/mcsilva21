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
		<div>
			<h3>ȸ�����</h3>
		</div>

		<div>
			<table border="1">
				<thead>
					<tr>
						<th>�л���ȣ</th>
						<th>�л��̸�</th>
						<th>�л���й�ȣ</th>
						<th>�л��μ�</th>
						<th>����</th>
					</tr>
				</thead>

				<tbody>
							<c:choose>
							<c:when test="${list.size() > 0}">				
							<c:forEach var="item" items="${list}">			
								<tr>
									<td>${item.stuid}</td>
									<td>${item.stuname}</td>
									<td>${item.stupass}</td>
									<td>${item.studepart}</td>
									<td><a href="${item.stuid}/delete">����</a> <a href="${item.stuid}/update">����</a>
									</td>
								</tr>				
							</c:forEach>
									</c:when>	
									<c:otherwise>
							<tr>
								<td colspan="4">��� �� ������ �����ϴ�</td>
							</tr>						
						</c:otherwise>
									</c:choose>												
				</tbody>		
			</table>
			
			<div>
			<a href="add">���</a>
			<a href="../">�����޴�</a>
		</div>

		</div>



</body>
</html>