<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link href="/resources/css/style.css" rel="stylesheet" />

<style type="text/css">
nav#nav { padding:10px; text-align:right; width:80%; margin: 0 auto;}
#header_wrap{background: url("/resources/images/top_bg.jpg");height:100px; width:100%;}
nav#nav ul li { display:inline-block;font-size:18px; font-weight:700; width:15%;}
#header_box{width: 80%; margin: 0 auto;}
#nav_box{width: 100%; margin: 0 auto; height: 80px;}
.main_img{height:500px; background:#000 url(/resources/images/main_img.jpg); text-align: center; font-size: 48px; color: #fff;box-sizing: border-box;
padding-top: 200px; no-repeat;} 
section{width: 80%; margin: 0 auto; border-top:2px solid #eee; padding-top: 25px}
#section-content{text-align: center;} 
#section-content iframe{padding: 30px}
#section2{width: 80%;}
h2{padding-top: 80px ;font-size: 30px; font-weight: 700; text-align: center;}
.stit{font-size: 14px; color: #999; text-align: center;}
.cont{min-height: 400px; background: url(/resources/images/img.png) right bottom no-repeat; margin-top : 50px; padding-right: 200px;}
.cont h3{color: #5992aa; font-size: 25px; line-height: 50px; text-align: center; font-weight: 700;}
.cont li{font-size: 20px; line-height: 50px; text-align: center;}
footer{background: #333333; color: #8e9397; padding-top: 25px; text-align: center; font-size: 14px; width: 100%; margin: 0 auto; no-repeat;}    
</style>

<title>Index</title>

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

<section>
<div id="section-content">
<div class="main_img" id="section1">welcome to Click & Study!</div>

	  <h2>이달의 BEST 강의</h2>	
	  
	<iframe width="75%" height="500" src="https://www.youtube.com/embed/dtKciwk_si4" frameborder="0" allow="accelerometer; autoplay; 
	clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
</section>

<div class="section" id="section2">
<div style="padding-left: 300px">
    <h2>About 신청해유</h2>
    <p class="stit">열정과 최선을 다해 노력하는 신청해유입니다.</p>
</div>
    <div class="cont">
        <h3>인기강좌</h3>
        <ul>
        	<li>Spring Framwork</li>
        	<li>JAVA 기초</li>
        	<li>무작정 따라하는 실전 영어회화</li>
        	<li>CSS/HTML은 재밌다</li>
        </ul>
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