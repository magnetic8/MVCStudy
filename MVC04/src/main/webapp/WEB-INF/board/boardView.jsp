<%@page import="kr.board.entity.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("newLineChar", "\n"); %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
function goList(){
	location.href="${cpath}/boardList.do"
}
function goDel(num){
	location.href="${cpath}/boardDelete.do?num="+num;
}
function goUpdate(num){
	location.href="${cpath}/boardUpdateForm.do?num="+num;
}

</script>

</head>
<body>
 <jsp:include page="../header/header.jsp"/>
<div class="container">
  <h2>MVC02</h2>
  <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">
    	<table class="table table-bordered">
    		<tr>
    			<td>제목</td>
    			<td>${vo.title }</td>
    		</tr>
    		<tr>
    			<td>내용</td>
    			<td>${fn:replace(vo.content, newLineChar, "<br/>")}</td>
    		</tr>
    		<tr>
    			<td>작성자</td>
    			<td>${vo.writer}</td>
    		</tr>
    		<tr>
    			<td>작성일</td>
    			<td>${fn:split(vo.indate," ")[0]}</td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center">
    				<button class="btn btn-sm btn-primary" onclick="goUpdate(${vo.num})">수정</button>
    				<button class="btn btn-sm btn-warning" onclick="goDel(${vo.num})">삭제</button>
    				<button class="btn btn-sm btn-info" onclick="goList()">리스트</button>
    			</td>
    		</tr>
    	</table>  
    </div>
    <div class="panel-footer">Spring특화과정A_정유리</div>
  </div>
</div>

</body>
</html>
