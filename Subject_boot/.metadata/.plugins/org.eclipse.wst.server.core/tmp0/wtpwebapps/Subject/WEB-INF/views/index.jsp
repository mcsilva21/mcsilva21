<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

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
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/css/clean-blog.min.css" rel="stylesheet">

<title>Index</title>

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
            <a class="nav-link" href="subject/list">강의목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="student/list">학생목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="study/list">수강신청목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="bbs/list">문의게시판</a>
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
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="site-heading">
            <h1>About Poly Click</h1>
            <span class="subheading">열정이 넘치는 Poly School 입니다!</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
      <h1 style="text-align: center;">이달의 Best 강의</h1>
      <hr>
        <div class="post-preview">
 		<img style="height:150px; float:left; padding: 5px" src="/resources/img/AN.PNG">
          <a style="clear: both;" href="https://www.youtube.com/watch?v=DNLUA7EYXIQ&feature=youtu.be" target="_blank">
            <h2 class="post-title">
             [입문]안광민 교수의 개발환경 설정
            </h2></a>
            <h3 style="font-weight: 300;" class="post-subtitle">
              개발자의 첫 걸음 통합개발환경 빠르게 구축하자!
            </h3>
          <p class="post-meta">
            JDK,MySQL,HeidiSQL,Eclipse,Tomcat Onestop Install!
        </div>
        <hr>
        <div class="post-preview">
          <img style="height:140px; width:130px; float:left; padding: 7px" src="/resources/img/PARK.PNG">
           <a style="clear: both;" href="https://youtu.be/NPZrnO_zFGE" target="_blank">
            <h2 class="post-title">
              [초급]박경환 강사의 기초 JAVA
            </h2></a>
            <h3 style="font-weight: 300;" class="post-subtitle">
              기초 부터 탄탄히 알고리즘은 나에게 맡겨라!
            </h3>
          </a>
          <p class="post-meta">Step To Junior Programmer</p>
        </div>
        <hr>
        <div class="post-preview">
        <img style="height:150px; float:left; padding: 7px" src="/resources/img/K.jpg">
          <a href="https://youtu.be/L-0UvbFUXrk">
            <h2 class="post-title">
              [초급]우당탕탕 Spring framework
            </h2>
            </a>
             <h3 style="font-weight: 300;" class="post-subtitle">
              유쾌상쾌통쾌 기초부터 원리까지 CRUD!
            </h3>
          </a>
          <p class="post-meta">        
           Junior Programmer Course</p>
        </div>     
        <hr>
        <div class="post-preview">
        <img style="height:140px; width:130px; float:left; padding: 7px" src="/resources/img/Lee.png">
          <a style="clear: both;" href="https://youtu.be/GETQJzdDS98" target="_blank">
            <h2 class="post-title">
              [특강]이소희 강사의 면접 스프치
            </a>
            </h2>
            <h3 style="font-weight:300;"  class="post-subtitle">
              실무 부터 임원 면접까지 최종합격의 지름길!
            </h3>
          </a>
          <p class="post-meta">Until
          Dec 8, 2020</p>
        </div>
        <hr>
        
        
        <!-- Pager -->
        <div class="clearfix">
          <a class="btn btn-primary float-right" href="subject/list">More &rarr;</a>
        </div>
      </div>
    </div>
  </div>

  <hr>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="https://github.com/mcsilva21" target="blank">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
          </ul>
          <p style="font-family: 'Noto Sans KR', sans-serif;" class="copyright text-muted">Copyright(c) 2020 가영  대전광역시 동구 우암로 368-21 All rights reserved</p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/resources/js/clean-blog.min.js"></script>

</div>




</body>
</html>