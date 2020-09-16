<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>

</style>
</head>
<body>
	<div>
		<h3>주문목록</h3>
		<div>
			<form method="get" action="">
				<span>
					<select name="search">
						<option value="0">선택</option>
						<option value="1" ${pager.search == 1 ? 'selected' : ''}>주문번호</option>
						<option value="2" ${pager.search == 2 ? 'selected' : ''}>학생번호</option>
						<option value="3" ${pager.search == 3 ? 'selected' : ''}>과목번호</option>
						<option value="4" ${pager.search == 4 ? 'selected' : ''}>학점</option>
						<option value="5" ${pager.search == 5 ? 'selected' : ''}>신청날짜</option>
						
						
						
					</select>
				</span>
				<span>
					<input type="text" name="keyword" placeholder="검색어를 입력 해 주세요" value="${pager.keyword}">
				</span>
				<span>
					<input type="submit" value="검색">
				</span>
			</form>
		</div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th><a href="?${pager.query}&header=1&order=${pager.header == 1 ? (pager.order + 1) % 2 : 0}">게시글번호</a></th>
						<th><a href="?${pager.query}&header=2&order=${pager.header == 2 ? (pager.order + 1) % 2 : 0}">글제목</a></th>
						<th><a href="?${pager.query}&header=3&order=${pager.header == 3 ? (pager.order + 1) % 2 : 0}">글내용</a></th>
						<th><a href="?${pager.query}&header=4&order=${pager.header == 4 ? (pager.order + 1) % 2 : 0}">작성자</a></th>
						<th><a href="?${pager.query}&header=5&order=${pager.header == 5 ? (pager.order + 1) % 2 : 0}">작성날짜</a></th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${list.size() > 0}">
							<c:forEach var="item" items="${list}">			
								<tr>
									<td><a href="${item.bbsid}/view">${item.bbsid}</a></td>
									<td>${item.bbstitle}</td>
									<td>${item.bbscontent}</td>
									<td>${item.stuname}</td>
									<td><fmt:formatDate value="${item.bbsdate}" pattern="YYYY/MM/dd"></fmt:formatDate></td>
									<td><a href="${item.bbsid}/delete">삭제</a> <a href="${item.bbsid}/update">변경</a></td>
								</tr>				
							</c:forEach>
						</c:when>						
						<c:otherwise>
							<tr>
								<td colspan="5">신청내역이 없습니다</td>
							</tr>						
						</c:otherwise>
					</c:choose>					
				</tbody>				
			</table>
			<div>
				<div><a href="?page=1&${pager.query}">처음</a></div>
				<div><a href="?page=${pager.prev}&${pager.query}">이전</a></div>
				<ul>
					<c:forEach var="page" items="${pager.list}">
						<li class="${page == pager.page ? 'active' : ''}"><a href="?page=${page}&${pager.query}">${page}</a></li>					
					</c:forEach>
				</ul>
				<div><a href="?page=${pager.next}&${pager.query}">다음</a></div>
				<div><a href="?page=${pager.last}&${pager.query}">마지막</a></div>
			</div>
		</div>
		<div>
			<a href="add">등록</a><a href="../">처음으로</a>
		</div>
		
	</div>
</body>
</html>










