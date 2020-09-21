<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- �ΰ����� �׸� -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link href="/resources/css/style.css" rel="stylesheet" />

<style type="text/css">

 nav#nav { padding:10px; text-align:right;width: 1000px; margin: 0 auto;}
 nav#nav ul li { display:inline-block;font-size:18px; font-weight:700; width: 18%;}
 #header_box{width: 1000px; margin: 0 auto;}
 #nav_box{width: 1000px; margin: 0 auto; height: 100px;}
 footer{background: #333333; color: #8e9397; height: 50px; padding-top: 10px; text-align: center; font-size: 14px; width: 1000px; margin: 0 auto;}  
#container { padding:20px 0; border-top:2px solid #eee; width: 1000px; margin: 0 auto; }
#container::after { content:""; display:block; clear:both; }  

.form-signin {
    width: 100%;
    max-width: 330px;
    padding: 50px;
    margin: auto;
}

 
</style>

<title>�α���</title>
</head>
<body>

<div id="root">

<header id="header">
<div id="header_box">
	<%@include file="include/header.jsp" %>
</div>
</header>

<nav id="nav">
	<div id="nav_box">
		<%@ include file="include/nav.jsp" %>	
	</div>
</nav>
<div id="container">
	<form method="post" class="form-signin">
		<div>
			
			<label>���̵�<input name="stuname" type="text" placeholder="���̵� �Է��� �ּ���"></label>
		</div>	
		
		<div>
			<label>��й�ȣ<input name="stupass" type="password" placeholder="��й�ȣ�� �Է����ּ���"></label>
		</div>
		
		<div style="padding-left: 50px">
			<button type="submit" class="btn btn-info">�α���</button>
		</div>		
	</form>
</div>	
<footer id="footer">
	<div id="footer_box">
		<%@ include file="include/footer.jsp" %>	
	</div>
</footer>
</div>



</body>
</html>