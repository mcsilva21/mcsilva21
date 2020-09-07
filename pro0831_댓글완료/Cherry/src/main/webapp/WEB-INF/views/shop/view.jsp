<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<title>Home</title>

<!-- j.query -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
	
<style>
body {
	padding: 0;
	margin: 0;
}

ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

div#root {
	width: 90%;
	margin: 0 auto;
}

header#header {
	font-size: 60px;
	padding: 20px 0;
}

header#header h1 a {
	color: #000;
	font-weight: bold;
}

nav#nav {
	padding: 10px;
	text-align: right;
}

nav#nav ul li {
	display: inline-block;
	margin-left: 10px;
}

section#container {
	padding: 20px 0;
	border-top: 2px solid #eee;
	border-bottom: 2px solid #eee;
}

section#container::after {
	content: "";
	display: block;
	clear: both;
}

aside {
	float: left;
	width: 200px;
}
/*  div#container_box { float:right; width:calc(100% - 200px - 20px); } */
aside#aside h3 {
	font-size: 22px;
	margin-bottom: 20px;
	text-align: center;
}

aside ul li {
	text-align: center;
	margin-bottom: 10px;
}

aside ul li a {
	display: block;
	width: 100%;
	padding: 10px 0;
}

aside ul li a:hover {
	background: #eee;
}

aside#aside li {
	position: relative;
}

aside#aside li:hover {
	background: #eee;
}

aside#aside li>ul.low {
	display: none;
	position: absolute;
	top: 0;
	left: 180px;
}

aside#aside li:hover>ul.low {
	display: block;
}

aside#aside li:hover>ul.low li a {
	background: #eee;
	border: 1px solid #eee;
}

aside#aside li:hover>ul.low li a:hover {
	background: #fff;
}

aside#aside li>ul.low li {
	width: 180px;
}

a {
	color: #05f;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

footer#footer {
	background: #f9f9f9;
	padding: 20px;
	display:;
	margin: 0 auto;
	padding-left: 20px;
	font-weight: 700;
}
</style>

<style>
div.goods div.goodsImg {
	float: left;
}

div.goods div.goodsImg img {
	width: 500px;
	height: auto;
	margin-left: 20px
}

div.goods div.goodsInfo {
	float: right;
	width: 400px;
	font-size: 22px;
}

div.goods div.goodsInfo p {
	margin: 2px 20px 20px 20px;
}

div.goods div.goodsInfo p span {
	display: inline-block;
	width: 100px;
	margin-right: 15px;
}

div.goods div.goodsInfo p.cartStock input {
	font-size: 22px;
	width: 50px;
	padding: 5px;
	margin: 0;
	border: 1px solid #eee;
}

div.goods div.goodsInfo p.cartStock button {
	font-size: 26px;
	border: none;
	background: none;
}

div.goods div.goodsInfo p.addToCart {
	text-align: right;
}

div.goods div.gdsDes {
	font-size: 15px;
	clear: both;
	padding-top: 30px;
}
</style>

<style>
 section.replyForm { padding:30px 0; }
 section.replyForm div.input_area { margin:10px 0; }
 section.replyForm textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:98%; height:150px; pa }
 section.replyForm button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
 
 section.replyList { padding:30px 0; }
 section.replyList ol { padding:0; margin:0; }
 section.replyList ol li { padding:10px 0; border-bottom:2px solid #eee; }
 section.replyList div.userInfo { }
 section.replyList div.userInfo .userName { font-size:24px; font-weight:bold; }
 section.replyList div.userInfo .date { color:#999; display:inline-block; margin-left:10px; }
 section.replyList div.replyContent { padding:10px; margin:20px 0; }
 section.replyList div.replyFooter button { font-size:14px; border: 1px solid #999; background:none; margin-right:10px; }
</style>

<style>
 div.replyModal { position:relative; z-index:1; display: none;}
 div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
 div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:500px; height:250px; padding:20px 10px; background:#fff; border:2px solid #666; }
 div.modalContent textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:480px; height:150px; }
 div.modalContent button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
 div.modalContent button.modal_cancel { margin-left:20px; }
</style>	

<script> 
function replyList() {
								
							
 var gdsNum = ${view.gdsNum};
 $.getJSON("/shop/view/replyList" + "?n=" + gdsNum, function(data){
  var str = "";
  
  $(data).each(function(){
   
   console.log(data);
   
   var repDate = new Date(this.repDate);
   repDate = repDate.toLocaleDateString("ko-US")
   
   //코드조립
   str += "<li data-repNum='" + this.repNum + "'>" //"<li data-gdsNum='" + this.gdsNum + "'>"
   + "<div class='userInfo'>"
   + "<span class='userName'>" + this.userName + "</span>"
   + "<span class='date'>" + repDate + "</span>"
   + "</div>"
   + "<div class='replyContent'>" + this.repCon + "</div>"
  
   + "<c:if test='${member != null}'>"
  
   + "<div class='replyFooter'>"
   + "<button type='button' class='modify' data-repNum='" + this.repNum + "'>수정</button>"
   + "<button type='button' class='delete' data-repNum='" + this.repNum + "'>삭제</button>"
   + "</div>"
  
   + "</c:if>"
  
   + "</li>";          
  });
  
  $("section.replyList ol").html(str);
 });
 }
</script>

</head>
<body>

	<div id="root">
		<header id="header">
			<div id="header_box">
				<%@include file="../include/header.jsp"%>
			</div>
		</header>

		<nav id="nav">
			<div id="nav_box">
				<%@ include file="../include/nav.jsp"%>
			</div>
		</nav>

		<section id="container">

			<div id="container_box">
				<section id="content">

					<aside id="aside">
						<%@ include file="../include/aside.jsp"%>
					</aside>

					<form role="form" method="post">
						<input type="hidden" name="gdsNum" value="${view.gdsNum}" />
					</form>

					<div class="goods" style="padding-right: 50px">
						<div class="goodsImg">
							<img src="${view.gdsImg}">
						</div>

						<div class="goodsInfo">
							<p class="gdsName">
								<span style="font-family: 'Noto Sans KR', sans-serif;">상품명</span>${view.gdsName}</p>

							<p class="cateName">
								<span style="font-family: 'Noto Sans KR', sans-serif;">카테고리</span>${view.cateName}</p>

							<p class="gdsPrice">
								<span style="font-family: 'Noto Sans KR', sans-serif;">가격
								</span>
								<fmt:formatNumber pattern="###,###,###" value="${view.gdsPrice}" />
								원
							</p>

							<p class="gdsStock">
								<span style="font-family: 'Noto Sans KR', sans-serif;">재고
								</span>
								<fmt:formatNumber pattern="###,###,###" value="${view.gdsStock}" />
								EA
							</p>

							<p class="cartStock">
								<span style="font-family: 'Noto Sans KR', sans-serif;">구입
									수량</span>
								<button type="button" class="plus">+</button>
								<input type="number" class="numBox" min="1"
									max="${view.gdsStock}" value="1" readonly="readonly" />
								<button type="button" class="minus">-</button>

								<script>
  $(".plus").click(function(){
   var num = $(".numBox").val();
   var plusNum = Number(num) + 1;
   
   if(plusNum >= ${view.gdsStock}) {
    $(".numBox").val(num);
//    } else {
    $(".numBox").val(plusNum);          
   }
  });
  
  $(".minus").click(function(){
   var num = $(".numBox").val();
   var minusNum = Number(num) - 1;
   
   if(minusNum <= 0) {
    $(".numBox").val(num);
   } else {
    $(".numBox").val(minusNum);          
   }
  });
 </script>

							</p>

							<p class="addToCart">
								<button type="button" class="btn btn-success">카트</button>
							</p>
						</div>

						<div class="gdsDes"
							style="text-align: right; font-family: 'Noto Sans KR', sans-serif;">${view.gdsDes}</div>
					</div>

					<div id="reply">
						<c:if test="${member == null}">
							<p>
								소감을 남기시려면 <a href="../member/signin">로그인</a>해주세요
							</p>
						</c:if>

						<c:if test="${member != null}">
							<section class="replyForm">
								<form role="form" method="post" autocomplete="off">

									<input type="hidden" name="gdsNum" id="gdsNum" value="${view.gdsNum}">

									<div class="input_area">
										<textarea name="repCon" id="repCon"></textarea>
									</div>

									<div class="input_area">
										<button type="button" id="reply_btn">상품후기</button>
										
<script>
 $("#reply_btn").click(function(){
  
  var formObj = $(".replyForm form[role='form']");
  var gdsNum = $("#gdsNum").val();
  var repCon = $("#repCon").val()
  
  var data = {
    gdsNum : gdsNum,
    repCon : repCon
    };
  
  $.ajax({
   url : "/shop/view/registReply",
   type : "post",
   data : data,
   success : function(){
    replyList();
    $("#repCon").val("");
   }
  });
 });
</script>	
										
										
										
										
									</div>

								</form>
							</section>
						</c:if>

						<section class="replyList">
							<ol>
<%-- 								<c:forEach items="${reply}" var="reply"> --%>

<!-- 									<li> -->
<!-- 										<div class="userInfo"> -->
<%-- 											<span class="userName">${reply.userName}</span> <span --%>
<%-- 												class="date"><fmt:formatDate value="${reply.repDate}" --%>
<%-- 													pattern="yyyy-MM-dd" /></span> --%>
<!-- 										</div> -->
<%-- 										<div class="replyContent">${reply.repCon}</div> --%>
<!-- 									</li> -->
<%-- 								</c:forEach> --%>
							</ol>
							
<script> 
replyList();
</script>

<script>

$(document).on("click", ".modify", function(){
	 //$(".replyModal").attr("style", "display:block;");
	 $(".replyModal").fadeIn(200);
	 
	 var repNum = $(this).attr("data-repNum");
	 var repCon = $(this).parent().parent().children(".replyContent").text();
	 
	 $(".modal_repCon").val(repCon);
	 $(".modal_modify_btn").attr("data-repNum", repNum);
	 
	});


</script>


<script>
 $(document).on("click", ".delete", function(){
	 
	 var deletConfirm = confirm("삭제 하시겠습니까?");
	 
	 if(deletConfirm){
		 
  var data = {repNum : $(this).attr("data-repNum")};
   
  $.ajax({
	  url : "/shop/view/deleteReply",
	  type : "post",
	  data : data,
	  success : function(result){
	   
	   if(result == 1) {
	    replyList();
	   } else {
	    alert("작성자 본인만 할 수 있습니다.");    
	   }
	  },
	  error : function(){
	   alert("로그인하셔야합니다.")
	  }
	 });
 }
 });
</script>

							
						</section>
					</div>


				</section>
			</div>


		</section>

	</div>
	</section>


	<footer id="footer">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp"%>
		</div>
	</footer>



<div class="replyModal">

 <div class="modalContent">
  
  <div>
   <textarea class="modal_repCon" name="modal_repCon"></textarea>
  </div>
  
  <div>
   <button type="button" class="modal_modify_btn">수정</button>
   <button type="button" class="modal_cancel">취소</button>
  </div>
  
  
 </div>

<div class="modalBackground"></div>

</div>

<script>
$(".modal_modify_btn").click(function(){
	 var modifyConfirm = confirm("정말로 수정하시겠습니까?");
	 
	 if(modifyConfirm) {
	  var data = {
	     repNum : $(this).attr("data-repNum"),
	     repCon : $(".modal_repCon").val()
	    };  // ReplyVO 형태로 데이터 생성
	  
	  $.ajax({
	   url : "/shop/view/modifyReply",
	   type : "post",
	   data : data,
	   success : function(result){
	    
	    if(result == 1) {
	     replyList();
	     $(".replyModal").fadeOut(200);
	    } else {
	     alert("작성자 본인만 할 수 있습니다.");       
	    }
	   },
	   error : function(){
	    alert("로그인하셔야합니다.")
	   }
	  });
	 }
	 
	});


$(".modal_cancel").click(function(){
//  $(".replyModal").attr("style", "display:none;");
$(".replyModal").fadeOut(200);
});
</script>

</body>
</html>
