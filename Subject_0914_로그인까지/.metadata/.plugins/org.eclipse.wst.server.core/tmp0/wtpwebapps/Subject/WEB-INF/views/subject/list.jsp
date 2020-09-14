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
			<h3>과목목록</h3>
		</div>

		<div>
			<table border="1">
				<thead>
					<tr>
						<th>과목번호</th>
						<th>과목명</th>
						<th>담당교수</th>
						<th>관리</th>
					</tr>
				</thead>

				<tbody>

					<c:choose>
						<c:when test="${list.size() > 0}">
							<c:forEach var="item" items="${list}">			
								<tr>
									<td>${item.subid}</td>
									<td>${item.subname}</td>
									<td>${item.subpro}</td>
									<td><a href="${item.subid}/delete">삭제</a> <a href="${item.subid}/update">변경</a>
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