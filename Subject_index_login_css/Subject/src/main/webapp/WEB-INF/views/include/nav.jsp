<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- �ΰ����� �׸� -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>



<ul>
<c:if test="${user == null}">
 <li>
  <a href="/login"><button type="button" class="btn btn-primary">�α���</button></a>
 </li>
<!--  <li> -->
<!--   <a href="/student/add"><button type="button" class="btn btn-danger">�л����</button></a> -->
<!--  </li> -->
 </c:if>
 
 <c:if test="${sessionScope.user != null}">
			<div>
				<a href="logout">�α׾ƿ�</a> 
				(${sessionScope.user.stuname})�� �����ϼ̽��ϴ�.
			</div>
		
			</c:if>
 
 </ul>
 
 	<div>
	<ul>
			<li><a href="subject/list">���Ǹ��</a></li>
			<li><a href="student/list">�л�����</a></li>
			<li><a href="study/list">������û����</a></li>
			<li><a href="bbs/list">�Խ��ǰ���</a></li>
			
		</ul>
		
	</div>