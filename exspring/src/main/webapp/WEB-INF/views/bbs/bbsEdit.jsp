<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판관리</title>
<style type="text/css">

	#templates{
		display: none;
	}


</style>

</head>
<body>
	<jsp:include page="/WEB-INF/views/comm/menu.jsp"></jsp:include>
	<h1>글 상세정보</h1>
	<form action="${pageContext.request.contextPath}/bbs/edit.do"
		method="post">
		<input type="hidden" name="bbsNo" value="${bbsVo.bbsNo}" />
		<table border="1">

			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" name="bbsTitle"
						value="${bbsVo.bbsTitle}" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="bbsContent" rows="20" cols="30">${bbsVo.bbsContent}</textarea></td>
				</tr>

				<!-- 	JSTL의 forEach에서  varStatus 속성을 사용하면, -->
				<!-- 	현재 for문의 실행상태에 대한 정보들을 활용할 수 있다. -->
				<c:forEach var="avo" items="${bbsVo.attachList}" varStatus="stat">
					<tr>
						<th>첨부파일 ${stat.count}</th>
						<td><a
							href="${pageContext.request.contextPath}/bbs/down.do?attNo=${avo.attNo}">${avo.attOrgName}</a></td>
					</tr>
				</c:forEach>

				<tr>
					<th>작성자</th>
					<td><c:out value="${bbsVo.bbsWriter}" /></td>
				</tr>
				<tr>
					<th>작성일</th>
					<td><fmt:formatDate value="${bbsVo.bbsRegDate}"
							pattern="yyyy년  MM월 dd일  HH시 mm분 ss초" /></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="저장">
		<%-- 	<a href="${pageContext.request.contextPath}/bbs/del.do?bbsNo=${bbsVo.bbsNo}"></a><input type="submit" value="삭제"> --%>
		<a
			href='${pageContext.request.contextPath}/bbs/del.do?bbsNo=${bbsVo.bbsNo}'><button
				type='button'>삭제</button></a><br />
	</form>

	<hr />

	<form action="" id="replyForm">
		<textarea name="repContent" rows="10" cols="30"></textarea>
		<input type="hidden" name="repBbsNo" value="${bbsVo.bbsNo}" /> <input
			type="button" value="저장" id="saveBtn" />
	</form>

	<hr/>	
	<div id="replyDiv">	</div>
<!-- 	로그인한 사용자가 작성한 댓글에는 삭제 버튼이 표시되록 구현 -->
<!-- 	삭제 버튼을 클릭하면  해당 댓글이 삭제되도록 구현 -->
<!-- 	로그인한 사용자가 자신이 작성하지 않은 댓글에 대해서 삭제요청 보내면 삭제 금지 -->
	<div id="templates">
		<div id="replyTemplate">
			<div><span data-id="repWriter" ></span>
			<span data-id="repData"></span>
			</div>
			<div><pre data-id="repContent"></pre></div>
			<hr/>
		</div>
	</div>
	
	<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
	<script type="text/javascript">
	 function refreshReplyList() {
		$.ajax({
			  url: "${pageContext.request.contextPath}/relpy/list.do", //요청주소
			  method: "GET",  //요청방식
			  data: {			
				  repBbsNo:$('[name="repBbsNo"]').val(),				  
				  },	
			  dataType: "json"
			}).done(function( data ) {
				console.log(data);	
				$('#replyDiv').html(''); //$('#replyDiv').empty();
				for (var i = 0; i < data.length; i++) {
					var rep = data[i];
					//댓글작성자,작성일시 도 함께 출력
// 					$('#replyDiv').append('<div>');
// 					$('#replyDiv').append('<span>'+ rep.repWriter + '</span>');
// 					$('#replyDiv').append('<span>' + rep.repData + '</span>');
// 					$('#replyDiv').append('<div/>');
// 					$('#replyDiv').append('<div><pre>' + rep.repContent + '</pre></div>');					
// 					$('#replyDiv').append('<hr/>');					
// 					var $d1 = $('<div>'); //<div></div>
// 					$('<span>').html(rep.repWriter).appendTo($d1); 
// 					//<div><span>rep.repWriter</span></div>
// 					$('<span>').html(rep.repData).appendTo($d1); //<span>rep.repData</span>
// 					//<div><span>rep.repWriter</span><span>rep.repData</span></div>
// 					var $d2 = $('<div>');
// 					$('<pre>').html(rep.repContent).appendTo($d2);//<pre>rep.repWriter</pre>
// 					//<div><ore>rep.repContent</pre></div>
// 					var $h = $('<hr>');
// // 					$('#replyDiv').append($d1).append($d2).append($h);
// 					$('#replyDiv').append([$d1,$d2,$h]);
					
//  div id="replyTemplate">
// 			<div>
//			<span data-id="repWriter" ></span>
// 			<span data-id="repData"></span>
// 			</div>
// 			<div data-id="repContent"></div>
// 			<hr/>
// 		</div>					
					var $rdiv = $('#replyTemplate').clone().appendTo('#replyDiv');					
					for ( var p in rep) $rdiv.find( '[data-id="'+p+'"]').html( rep[p] );
										
// 					$rdiv.find( '[data-id="repWriter"]').html(rep.repWriter);
// // 					$('[data-id="repWriter"]',$rdiv).html(rep.repWriter);
// 					$rdiv.find( '[data-id="repData"]').html(rep.repData);
// 					$rdiv.find( '[data-id="repContent"]').html(rep.repContent);
// // 					$('#replyDiv').append($rdiv);
				
			}	
			}).fail(function( jqXHR, textStatus ) {
			  alert( "Request failed: " + textStatus );
			});			
		}	
	$( function() {	
		refreshReplyList();
		$('#saveBtn').on('click',function() {//click 이벤트 발생시 실행될 함수			
		$.ajax({
				  url: "${pageContext.request.contextPath}/relpy/add.do", //요청주소
	 			  method: "POST",  //요청방식
// 	 			  data: {
// 	 				  repContent:$('[name="repContent"]').val(),
//					파라미터를 객체 형태로 전달하면 Jquery가 파라미터문자열로 만들어서 전송							
// 	 				  repBbsNo:$('[name="repBbsNo"]').val(),				  
// 	 				  },
					//폼 또는 입력 엘리먼트들에 대해서  serialize() 명령을 사용하면, 선택된 폼 내부의 모든 엘리먼들을 파라미터 문자열 형태로 변환
					data:$("#replyForm").serialize(),
				  dataType: "json"
				}).done(function( data ) {
					console.log(data);						
					if(data.result>0){
						alert("댓글 저장");
						$('[name="repContent"]').val('');
						refreshReplyList();
						//댓글 목록을 받아와서 화면에 출력						
					}else{
						alert("댓글 저장 실패");
					}
				}).fail(function( jqXHR, textStatus ) {
				  alert( "Request failed: " + textStatus );
			});
		});				
	});
	
</script>

</body>
</html>

<!-- $('xxx') : 현재 문서에 태그 이름이 xxx인 엘리먼트 찾아오기 -->
<!-- $('#xxx') : 현재 문서에  id 속상값이 이름이 xxx인 엘리먼트 찾아오기 -->
<!-- $('.xxx') : 현재 문서에  class에 xxx가 포함된  엘리먼트 찾아오기 -->
<!-- $('[xxx="yyy]') : 현재 문서에  xxx 속성값이 yyy인 엘리먼트 찾아오기 -->
<!-- $('[xxx]') : 현재 문서에  xxx 이 존재하는 엘리먼트 찾아오기 -->
<!-- $('xxx yyy') : 현재 문서에  xxx 엘리먼트 아래(내부)에 이 존재하는 yyy 엘리먼트 찾아오기 -->
<!-- $('xxx>yyy') : 현재 문서에  xxx 엘리먼트 바로 아래에 직속자식으로   존재하는 yyy 엘리먼트 찾아오기 -->
<!-- $('xxx,yyy') : 현재 문서에  xxx 엘리먼트 와 yyy 엘리먼트 모두  찾아오기 -->
<!-- $('<xxx>') : 새로운 xxx엘리먼트를 생성 -->
<!-- $('<xxx>') : 새로운 xxx엘리먼트를 생성 -->
<!-- $('function(){}') : 현재 문서를 끝까지 읽은 후 (로드한 후), 헤당 함수를 실행 -->


<xxx>
<!-- <yyy></yyy> -->
<!-- <div> -->
<!-- <yyy></yyy> -->
<!-- </div> -->
<!-- </xxx> -->
<!-- <yyy></yyy> -->