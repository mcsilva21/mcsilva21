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

<style type="text/css">

#table_text{font-family: 'Noto Sans KR', sans-serif;}
#table_tr td{text-align: center;}
#table_tr td a{text-decoration: none; list-style: none; color: black;}
#table_tr td a:hover{color: #0099a4;}
#side{font-family: 'Noto Sans KR', sans-serif;}
#side li{list-style: none; float: right; margin: 20px}
#side li a{color: black;}
section{width: 70%; margin: 0 auto;}
table{text-align: center;}
 
</style>

<title>Study View</title>
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


<section style="width: 70%; margin: 0 auto;">

	<div style="padding: 15px">
			<h2>Study View List</h2>			
		</div>

	<div id="table_text">
		<table class="table table-bordered">
			<tbody id="td_content">
			<tr id="table_tr">
			<td colspan="2">신청번호</td>
			<td colspan="3">${item.studyid}</td>
			</tr>	
			<tr id="table_tr">
				<td colspan="2">학생</td>
				<td colspan="3">${item.stuname}</td>
			</tr>
			<tr id="table_tr">
				<td colspan="2">학점</td>
				<td colspan="3">${item.studypoint}</td>
			</tr>
				<tr id="table_tr">
				<td colspan="2">신청일자</td>
				<td colspan="3"><fmt:formatDate pattern="yyyy-MM-dd" value="${item.studydate}"/></td>
				
			</tr>
			<tr>
				<td colspan="5" style="font-weight: 700">상세내역</td>
			</tr>
			
			<tr>
				<td>상세번호</td>
				<td>강의명</td>
				<td>학점</td>
				<td>신청</td>
				<td>총학점</td>
			</tr>
			<c:forEach var="item" items="${item.detail}">
			<tr>
				<td>${item.detailid}</td>
				<td>${item.subname}</td>
				<td>${item.subpoint}</td>
				<td>${item.amount}</td>
				<td>${item.subpoint * item.amount}</td>
			</tr>
			</c:forEach>
			<c:if test="${item.detail == null || item.detail.size () < 1}">
			<tr>
				<td colspan="5">주문내역이 없습니다.</td>
			</tr>
			</c:if>						
			</tbody>
			
		
		
		</table>
	</div>
	
	<div id="side">
		<ul style="border: 1px">
			<li><a href="../../">처음으로</a></li>
			</ul>
			</div>			
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
	
</div>

</body>
</html>