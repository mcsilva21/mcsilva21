<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Poly Click</title>

  <!-- Bootstrap core CSS -->
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/css/clean-blog.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
  integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

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

<style type="text/css">

section{width:70%; margin: 0 auto;}
table{text-align: center;}
#a{text-decoration:none;}
#s{border:1px solid; background-color: black; color: #fff;}
#s1{color: #fff}

.form-signin {
   	width: 70%;
    padding: 10px;
    margin: 10px;
    font-family: 'Noto Sans KR', sans-serif;
}

#recss{font-family: 'Noto Sans KR', sans-serif;}
 
</style>

<title>Bbs View</title>
</head>
<body>

<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">    
      <a class="navbar-brand" href="/">Poly Click</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../subject/list">강의목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../student/list">학생목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../study/list">수강신청목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../bbs/list">문의게시판</a>
          </li>
		<c:if test="${user == null}">
 		<li class="nav-item">
  			<a class="nav-link" href="/login">Login</a>
 		</li>
 		</c:if>

		 <c:if test="${sessionScope.user != null}">
		 <li class="nav-item">
				<a class="nav-link" href="logout">Logout</a> 
		<li class="nav-item">
			<a class="nav-link">Welcome to (${sessionScope.user.stuname})</a></li>
		</li>	
			</c:if>
        </ul>              
      </div>
     <div>
     <ul>
 </ul>
     
     </div>
    </div>
  </nav>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container" style="height: 80px">
      <div class="row" hidden>
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
           	<h1>과목</h1>
          </div>
        </div>
      </div>
    </div>
  </header>


<section style="width: 70%; margin: 0 auto; ">
<div>
<h1>Notice Board</h1>
</div>
<hr>
		<form method="post" class="form-signin" style="text-align: center; margin: 0 auto;">
			<div style="text-align: left;">No:${item.bbsid}</div>				
			<div class="input-group mb-3">제목			
			<input name="bbsid" type="int" class="form-control" value="${item.bbstitle}" style="width:800px; height:50px;">
			</div>

<div class="input-group mb-3">
	<label>내용</label>
		<textarea name="bbscontent" class="form-control" cols="20" row="40" style="width:800px; height:300px;"><c:out value="${item.bbscontent}" />
		</textarea>
</div>

				<label>작성자 ${user.stuid}</label>
 				<label>${user.stuname}</label>			
</form>

		<div style="text-align: center; margin: 0 auto;" id="recss">
		<a id="a" href="/bbs/list"><input id="s" type="button" value="목록"></a>
		<a id="a" href="../${item.bbsid}/update"><input id="s" type="button" value="변경"></a>
		</div>
<hr>
<!-- 댓글리스트 시작 -->
<div>
	<h2>Reply</h2>
</div>
<form name="replylist" method="get" id="recss">
<div id="reply">
  <ol class="replyList">
    <c:forEach items="${repList}" var="repList">
      <li>
       <p>작성자:${repList.repwriter}</p>
		<p>내용:${repList.repcontent}</p>
        <p>작성날짜:
        <fmt:formatDate value="${repList.repdate}" pattern="yyyy-MM-dd" /></p>
      </li>
      <button type="submit" class="replyDeleteBtn" id="s"><a id="s1" href="/bbs/${repList.repno}/replyDelete">삭제</a></button>
    </c:forEach>   
  </ol>
</div>
</form>
<!--댓글리스트 종료  -->

<!--댓글작성 시작-->
<form name="replyForm" method="post" id="recss">
  <div>
    <label for="writer">댓글 작성자</label><br>
    <input class="form-control" type="number" id="repwriter" name="repwriter" value="${user.stuid}"/>
    <label for="content">댓글 내용</label><textarea id="repcontent" name="repcontent" class="form-control" style="width:100%; height:50px;"></textarea>
  </div>
  <div style="padding: 10px;">
 	 <button type="submit" class="replyWriteBtn" id="s">작성</button>
 </div>
</form>
<!-- 댓글작성 끝 -->
</section>

	<!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/resources/js/clean-blog.min.js"></script>
		
	<footer id="footer">
	<div id="footer_box">
		<%@ include file="include/footer.jsp" %>	
	</div>
	</footer>


</body>
</html>