<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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

nav#nav { padding:10px; text-align:right;width: 1000px; margin: 0 auto;}
nav#nav ul li { display:inline-block;font-size:18px; font-weight:700; width: 18%;}
#header_box{width: 1000px; margin: 0 auto;}
#nav_box{width: 1000px; margin: 0 auto; height: 100px;}
section{width: 1000px; margin: 0 auto; border-top:2px solid #eee;}
#section-content iframe{padding: 15px}
footer{background: #333333; color: #8e9397; height: 50px; padding-top: 10px; text-align: center; font-size: 14px; width: 1000px; margin: 0 auto;}    
table{text-align: center;}
 
 form-add {
    width: 100%;
    max-width: 330px;
    padding: 50px;
    margin: auto;
}

</style>

<title>Studnet_add</title>
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
<div id="container">
	<section>
		<form method="post" class="form-add">
			
			<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label>학생번호:</label> 
				<input name="stuid" type="text" class="form-control" aria-label="Sizing example input" 
				aria-describedby="inputGroup-sizing-default">
			</div>
			</div>
			<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label>학점:</label> <input name="studypoint" type="number" class="form-control" aria-label="Sizing example input" 
				aria-describedby="inputGroup-sizing-default">
			</div>
			</div>
			<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label>신청일자:</label> <input name="studydate" type="number" class="form-control" aria-label="Sizing example input" 
				aria-describedby="inputGroup-sizing-default">
			</div>
			</div>
			<div style="padding-left: 70px; padding-top: 10px">
				<button type="submit" class="btn btn-info">등록</button>
			</div>	
		</form>	
		</section>
		</div>
		
	<footer id="footer">
	<div id="footer_box">
		<%@ include file="../include/footer.jsp" %>	
	</div>
	</footer>
		
	</div>
</body>
</html>