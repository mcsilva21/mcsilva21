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

	<div>
		<h3>��û�ؼ� �����Ͻ�!</h3>
		<c:if test="${sessionScope.user == null}">
		
			<div>
				<a href="login">�α���</a>
			</div>
			
			<a href="student/add">ȸ������</a>
			
		</c:if>
		<c:if test="${sessionScope.user != null}">
			<div>
				<a href="logout">�α׾ƿ�</a> (${sessionScope.user.stuname})
			</div>
		
			</c:if>
	</div>
	<div>
	<ul>
			<li><a href="subject/list">���ǰ���</a></li>
			<li><a href="student/list">�л�����</a></li>
			
		</ul>
		
	</div>


</div>

</body>
</html>