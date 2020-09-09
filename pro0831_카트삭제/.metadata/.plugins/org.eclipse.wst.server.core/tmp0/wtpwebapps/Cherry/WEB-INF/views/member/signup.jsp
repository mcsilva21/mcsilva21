<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>로그인</title>

<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="/docs/4.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">

	
<style>
 body { font-family: 'Do Hyeon', sans-serif; padding:0; margin:0; }
 ul { padding:0; margin:0; list-style:none;  }

 div#root { width:90%; margin:0 auto; }
 
 header#header { font-size:60px; padding:20px 0; }
 header#header h1 a { color:#000; font-weight:bold; }
 
 nav#nav { padding:10px; text-align:right; }
 nav#nav ul li { display:inline-block; margin-left:10px; }

 section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
 section#container::after { content:""; display:block; clear:both; }
 aside { float:left; width:200px; }
 div#container_box { float:right; width:calc(100% - 200px - 20px); }
 
 aside ul li { text-align:center; margin-bottom:10px; }
 aside ul li a { display:block; width:100%; padding:10px 0;}
 aside ul li a:hover { background:#eee; }
 
footer#footer{background:#f9f9f9; padding:20px; display:; margin: 0 auto; padding-left: 20px;  font-weight: 700; }

.form-signin {
    width: 100%;
    max-width: 330px;
    padding: 50px;
    margin: auto;
}

</style>	

 <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">	
	
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
		<%@ include file="../include/nav.jsp" %>	
	</div>
</nav>

<section id="container">
	<div id="ontainer_box">
	
<section id="content">
 <form role="form" method="post" autocomplete="off" form class="form-signin">
 <h1 class="h3 mb-3 font-weight-normal" style="font-family: 'Do Hyeon', sans-serif;">회원등록(Signup)</h1>
  <div class="input_area">
   <label for="userId" class="sr-only">아이디</label>
   <input type="email" id="userId" class="form-control" name="userId" placeholder="example@email.com" required="required"/>      
  </div>
  
  <div class="input_area">
   <label for="userPass" class="sr-only">패스워드</label>
   <input type="password" id="userPass" class="form-control" name="userPass" required="required" placeholder="비밀번호를 입력하세요"/>      
  </div>
  
  <div class="input_area">
   <label for="userName" class="sr-only">닉네임</label>
   <input type="text" id="userName" class="form-control" name="userName" placeholder="닉네임을 입력해주세요" required="required" />      
  </div>
  
  <div class="input_area">
   <label for="userPhon" class="sr-only">연락처</label>
   <input type="text" id="userPhon" class="form-control" name="userPhon" placeholder="연락처를 입력해주세요" required="required" />      
  </div>
  <br>
  <div style="padding-left: 62px" > 
  <button class="btn btn-primary" type="submit" id="signup_btn" name="signup_btn">회원가입</button>
  </div>
 </form>   
</section>

<footer id="footer">
	<div id="footer_box">
		<%@ include file="../include/footer.jsp" %>	
	</div>

</div>
</section>
</div>


</body>
</html>