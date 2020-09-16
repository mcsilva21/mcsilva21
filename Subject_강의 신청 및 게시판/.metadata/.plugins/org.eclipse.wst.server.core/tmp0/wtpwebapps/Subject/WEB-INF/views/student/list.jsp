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
			<h3>회원목록</h3>
		</div>

		<div>
			<table border="1">
				<thead>
					<tr>
						<th>학생번호</th>
						<th>학생이름</th>
						<th>학생비밀번호</th>
						<th>학생부서</th>
						<th>관리</th>
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
									<td><a href="${item.stuid}/delete">삭제</a> <a href="${item.stuid}/update">변경</a>
									</td>
								</tr>				
							</c:forEach>
									</c:when>	
									<c:otherwise>
							<tr>
								<td colspan="4">등록 된 도서가 없습니다</td>
							</tr>						
						</c:otherwise>
									</c:choose>												
				</tbody>		
			</table>
			
			<div>
			<a href="add">등록</a>
			<a href="../">이전메뉴</a>
		</div>

		</div>



</body>
</html>