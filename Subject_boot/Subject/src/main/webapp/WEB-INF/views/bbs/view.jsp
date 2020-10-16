<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">


$(".replyWriteBtn").on("click", function(){
	  var formObj = $("form[name='replyForm']");
	  formObj.attr("action", "/bbs/list");
	  formObj.submit();
	});
	
//댓글 삭제

<script type="text/javascript">
	$(function(){
		$('#replyDeleteBtn').click(function(){
						
			$.ajax({
				type: 'GET',
				url: '/?repno=/replyDelete/
				data:repno
				success:function(data){
					remove();
				}				
			})								
		})	
	})
	
	


</script>


<link href="/resources/css/style.css" rel="stylesheet" />

<style type="text/css">

nav#nav { padding:10px; text-align:right;width: 1000px; margin: 0 auto;}
nav#nav ul li { display:inline-block;font-size:18px; font-weight:700; width: 18%;}
#header_box{width: 1000px; margin: 0 auto;}
#nav_box{width: 1000px; margin: 0 auto; height: 100px;}
section{width: 1000px; margin: 0 auto; border-top:2px solid #eee;}
#section-content iframe{padding: 15px}
footer{background: #333333; color: #8e9397; height: 50px; padding-top: 10px; text-align: center; font-size: 14px; width: 1000px; margin: 0 auto;}    
table{text-align: center;}
#a{text-decoration:none;}
#s{border:1px solid; skyblue; background-color:#FFFAFO color: skyblue;}

.form-signin {
    width: 100%;
    padding: 10px;
    margin: 10px;
}
 
</style>

<title>Bbs View</title>
</head>
<body>

<div id="root">

<header id="header">
<div id="header_box">
	<%@include file="../include/header.jsp" %>
</div>
</header>

<nav id="nav">
	<div id="nav_box">
		<%@ include file="include/nav.jsp" %>	
	</div>
</nav>

<section>

<div id="container">

		<form method="post" class="form-signin">

			<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label>글번호:</label>
				<input name="bbsid" type="int" class="form-control" aria-label="Sizing example input" 
				aria-describedby="inputGroup-sizing-default" value="${item.bbsid}">
			</div>
			</div>

			
			<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label>글제목:</label>
				<input name="bbsid" type="int" class="form-control" aria-label="Sizing example input" 
				aria-describedby="inputGroup-sizing-default" value="${item.bbstitle}">
			</div>
			</div>

			<div class="input-group mb-3">
			<div class="input-group-prepend">
			<label>내용:</label>
			<textarea name="bbscontent" class="form-control"cols="20" row="40" style="width:1000px; height:300px;"><c:out value="${item.bbscontent}" />
			</textarea>
			</div>
			</div>
			<div class="input-group mb-3">
			<div class="input-group-prepend">
 				<label>작성자:</label>
			<input name="bbswriter" type="text" value="${user.stuid}" class="form-control" aria-label="Sizing example input" 
				aria-describedby="inputGroup-sizing-default">
			</div> 
			</div>


</form>
</div>
		<div style="width: 1000px; text-align: center; padding: 15px">
		<a id="a" href="/bbs/list"><input id="s" type="button" value="목록"></a>
		<a id="a" href="../${item.bbsid}/update"><input id="s" type="button" value="변경"></a>
		</div>
<hr>
<!-- 댓글 -->
<form name="replylist" method="get">
<div id="reply">
  <ol class="replyList">
    <c:forEach items="${repList}" var="repList">
      <li>
        <label>작성자:${repList.repwriter}</label>
        <br>
		<label>내용:${repList.repcontent}</label>
		<br>
        <label>작성날짜:</label> 
        <fmt:formatDate value="${repList.repdate}" pattern="yyyy-MM-dd" />
      </li>
      <button type="submit" class="replyDeleteBtn"><a href="/bbs/${repList.repno}/replyDelete">삭제</a></button>
    </c:forEach>   
  </ol>
</div>
</form>

<form name="replyForm" method="post">

  <div>
    <label for="writer">댓글 작성자</label>
    <br>
    <input type="number" id="repwriter" name="repwriter" value="${user.stuid}"/>
    <br>
    <label for="content">댓글 내용</label>
    <textarea id="repcontent" name="repcontent" class="form-control" cols="10" row="10" style="width:500px; height:50px;"></textarea>
  </div>
 	 <button type="submit" class="replyWriteBtn">작성</button>
</form>


	<footer id="footer">
	<div id="footer_box">
		<%@ include file="../include/footer.jsp" %>	
	</div>
	</footer>
	
	
</div>

</body>
</html>