<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study View</title>
</head>
<body>

<div>

	<div>
		<h3>주문상세</h3>
	</div>
	
	<div>
		<table border="1">
			<tbody>
			<tr>
			<td colspan="2">주문번호</td>
			<td colspan="3">${item.bbsid}</td>
			</tr>	
			<tr>
				<td colspan="2">고객명</td>
				<td colspan="3">${item.stuname}</td>
			</tr>
			<tr>
				<td colspan="2">판매금액</td>
				<td colspan="3">${item.bbstitle}</td>
			</tr>
			<tr>
				<td colspan="2">판매금액</td>
				<td colspan="3">${item.bbscontent}</td>
			</tr>
			<tr>
				<td colspan="5">상세내역</td>
			</tr>
			
							
			</tbody>
			
		
		
		</table>
	</div>
	
</div>

</body>
</html>