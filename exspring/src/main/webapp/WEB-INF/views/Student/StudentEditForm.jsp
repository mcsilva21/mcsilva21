<%@page import="kr.ac.kopo.student.StudentVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

   <!DOCTYPE html>              
   <html>                       
   <head>                       
   <meta charset='UTF-8'>       
   <title>학생 관리</title>
   </head>                    
   <body>                       
  <jsp:include page="/WEB-INF/views/comm/menu.jsp"></jsp:include> 
   <h1>학생 정보 수정</h1>


    <form action='${pageContext.request.contextPath}/student/edit.do' method='post'> 
        
        학번: <input text='text' name='stuNo' value='${stuVo.stuNo}' /><br/>       
        이름: <input text='text' name='stuName' value='${stuVo.stuName}'/><br/>     
        성적: <input text='text' name='stuScore' value='${stuVo.stuScore}'/><br/>   
        <input type='submit' value='저장'/>    
                     
       <a href='${pageContext.request.contextPath}/student/del.do?stuNo=${stuVo.stuNo}'><button type='button'> 삭제 </button></a><br/>                                   
               </form> 

</body>                     
</html>     