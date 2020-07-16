<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판관리</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/comm/menu.jsp"></jsp:include>
<h1>새 글 쓰기</h1>	
<form action="${pageContext.request.contextPath}/bbs/add.do" method="post">
	
<table border="1">
	<tbody>
	<tr><th>제목</th><td><input type="text" name="bbsTitle"/></td></tr> 
	<tr><th>내용</th><td><textarea name="bbsContent" rows="20" cols="30"></textarea></td></tr> 
<%--<tr><th>작성자</th><td><input type="text" name="bbsWriter" value='${loginUser.memId}' readonly="readonly"/></td></tr>--%>
<!-- 보안관련 태그는 백앤드에서 구현해야함 -->
	</tbody>			
</table>		
	<input type="submit" value="저장"/>
</form>	

</body>
</html>	