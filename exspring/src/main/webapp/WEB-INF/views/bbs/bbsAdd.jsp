<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판관리</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/comm/menu.jsp"></jsp:include>
<h1>새 글 쓰기</h1>	
<!-- 폼에 파일(업로드)가 포함된경우에는, enctype="multipart/form-data" 속성을 저장 -->
<form action="${pageContext.request.contextPath}/bbs/add.do" method="post" enctype="multipart/form-data">
	
<table border="1">
	<tbody>
	<tr><th>제목</th><td><input type="text" name="bbsTitle"/></td></tr> 
	<tr><th>내용</th><td><textarea name="bbsContent" rows="20" cols="30"></textarea></td></tr> 
	<tr><th>첨부파일1</th><td><input type="file" name="upfileList"/></td></tr>
	<tr><th>첨부파일2</th><td><input type="file" name="upfileList"/></td></tr>

	</tbody>			
</table>		
	<input type="submit" value="저장"/>
</form>	

</body>
</html>	