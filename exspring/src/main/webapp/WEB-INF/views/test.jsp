<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TEST	</title>
</head>
<body>

<h1>테스트 화면 입니다.</h1>

<h2>model s: ${modelVal} </h2>
<h2>modelMap s: ${modelMap} </h2>
<h2>map s: ${mapVal} </h2>

<!-- membervo 클래스의 변수 값을 넣어야함 -->
<h2>my의 myNo : ${mvo.myNo} </h2> 
<h2>my의 myId : ${mvo.myId} </h2>

<h2>myVo의 myId : ${myVo.myNo} </h2>
<h2>myVo의 myId : ${myVo.myId} </h2>

</body>
</html>