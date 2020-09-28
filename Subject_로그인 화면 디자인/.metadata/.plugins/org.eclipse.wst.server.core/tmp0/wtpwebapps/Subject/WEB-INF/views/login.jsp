<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<link href="/resources/css/style.css" rel="stylesheet" />

<style type="text/css">

nav#nav {padding:10px; text-align:right; width:80%; margin: 0 auto;}
#header_wrap{background: url("/resources/images/top_bg.jpg");height:100px; width:100%;}
nav#nav ul li { display:inline-block;font-size:18px; font-weight:700; width:15%;}
#header_box{width: 80%; margin: 0 auto;}
#nav_box{width: 100%; margin: 0 auto; height: 80px;}
.main_img{height:500px; 
background:#000 url(/resources/images/main_img.jpg); text-align: center; font-size: 48px; c
olor: #fff;box-sizing: border-box;
padding-top: 200px;} 
section{width: 80%; margin: 0 auto; border-top:2px solid #eee;}
#section-content{text-align: center;} 
footer{background: #333333; color: #8e9397; height: 50px; padding-top: 10px; text-align: center; font-size: 14px; width: 1000px; margin: 0 auto;}  
#container { padding:20px 0; border-top:2px solid #eee; width: 1000px; margin: 0 auto; }
#container::after { content:""; display:block; clear:both; }  
.form-signin { width: 100%; max-width: 330px; padding: 50px; margin: auto;}
footer{background: #333333; color: #8e9397; padding-top: 25px; text-align: center; font-size: 14px; width: 100%; margin: 0 auto;}   

 
</style>

<title>로그인</title>
</head>
<body>

<div id="root">

<header id="header">
<div id="header_box">
	<%@include file="include/header.jsp" %>
</div>
</header>

<div id="header_wrap">
<nav id="nav">
	<div id="nav_box">
		<%@ include file="include/nav.jsp" %>	
	</div>
</nav>
</div>

<div id="container" style="width: 80%; height:480px">
<div style="padding-top: 70px">
	<form method="post" class="form-signin">
		<div>			
			<label>아이디<input name="stuname" type="text" placeholder="아이디를 입력해 주세요"></label>
		</div>	
		
		<div>
			<label>비밀번호<input name="stupass" type="password" placeholder="비밀번호를 입력해주세요"></label>
		</div>
		
		<div style="padding-left: 50px">
			<button type="submit" class="btn btn-info">로그인</button>
		</div>		
	</form>
	</div>
</div>	
<footer id="footer">
	<div id="footer_box">
		<%@ include file="include/footer.jsp" %>	
	</div>
</footer>
</div>

</body>
</html>