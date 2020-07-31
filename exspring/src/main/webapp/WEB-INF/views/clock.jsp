<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CLOCK</title>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$( function() {//문서를 끝까지 모두 읽은 후 이 함수를 실행
// 	window.setInterval(실행함수,몇ms마다반복실행할지)
	setInterval(function() {
				
	$.ajax({
			  url: "${pageContext.request.contextPath}/data.do", //요청주소
// 			  method: "POST",  //요청방식
// 			  data: { id : menuId },  //요청전송시함께전송할파라미터들
			  dataType: "json" //응답으로 받을 데이터 의 타입(text,html,xml,json...)
			}).done(function( data ) {
				//요청에 대한 응답을 정상적으로 받은 경우 실행
				//응답 데이터가 인자로 전달
// 				console.log(msg);
// 				var data = JSON.parse(msg); 
// 				ajax 요청이  dataType: "json" 으로 저정하면,
// 				jQuery가 응답으로 받은 JSON문자열을 자바스크립트로 변환하여 인자로 전달
				console.log(data);
				$('#time').html(data.now);			
				$('#no').html(data.num);			
			}).fail(function( jqXHR, textStatus ) {
				//요청 전송이나 응답 수신이 실패한 경우
			  alert( "Request failed: " + textStatus );
			});
			
	},1000);	
					//제이쿼리를 사용하여 id가test인 엘리먼트 내용을 'abc'설정			
	});
	
</script>
</head>

<body>

<h1>엄청나게많은</h1>
<h1>테스트 화면 입니다.</h1>
<h2>현재 시간:<span id="time"></span></h2>
<h2>행운의 숫자:<span id="no"></span></h2>
<h1>산업기사 시험 범위</h1>

</body>
</html>