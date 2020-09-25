<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.min.js" 
integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

<script>
$(function(){
	$('#upload').click(function() {
		const form = document.getElementById("form"); //document.getElementById() 제이쿼리 태그 선택자 '' 'form' 제이쿼리 객체 변환 ==> .get으로 form은 자바스크립트에 객체로 변환됨
		const formData = new FormData(form); // 자바의 a=b와는 다름 서로 다른 값을 가르킴 새로운 값을생성x 폼테그에 있는 데이터만 추출하여 ajax로 전달 ==> 백그라운드로 전달
		
		$.ajax({
	            type: 'POST',
	            url: 'upload_ajax',
	            enctype: 'multipart/form-data',
	            data: formData,
	            async: true,
	            cache: false,
	            contentType: false,
	            processData: false,
	            success: function(data) {
	               $('ul').html(data);
	            },
			
	            error: function(err) {
					alert("등록 실패");
				}
	            
	         });
	         
	      });
	   });
</script>
<title>Insert title here</title>
</head>
<body>



	<div>

		<div>
			<h3>이미지갤러리</h3>
		</div>
		<div>
			<ul>
				<c:forEach var="item" items="${list}">
					<li>
					<span>${item.title}</span> 
					<span><img src="upload/${item.image}"></span>
					</li>
				</c:forEach>
				<c:if test="${list.size() < 1}">
					<li>
						<div>등롤돤 이미지가 없습니다.</div>
					</li>
				</c:if>
			</ul>
		</div>
		<div>
			<form id="form" method="post" action="upload" enctype="multipart/form-data">
				<div>
					<label>제목:</label> <input name="title" type="text">
				</div>
				<div>
					<input name="uploadFile" type="file">
				</div>
				<div>
					<input type="submit" value="등록">
				</div>

			</form>
		</div>
		<div>
			<button id="upload">[AJAX]등록</button>
		</div>

	</div>



</body>
</html>