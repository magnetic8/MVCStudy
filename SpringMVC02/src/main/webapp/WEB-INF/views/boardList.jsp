<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	
	<div class="container">
  		<h2>게시판 목록</h2>
  		<div class="panel panel-default">
    		<div class="panel-heading">
    		<c:if test="${empty mvo }">
    	<form class="form-inline" action="${cpath}/login.do" method="post">
		  <div class="form-group">
		    <label for="memId">ID:</label>
		    <input type="text" class="form-control" name="memId">
		  </div>
		  <div class="form-group">
		    <label for="memPwd">Password:</label>
		    <input type="password" class="form-control" name="memPwd">
		  </div>
		  <button type="submit" class="btn btn-default">로그인</button>
		</form>
	  </c:if>
	  <c:if test="${!empty mvo }">
	  	<form class="form-inline" action="${cpath}/logout.do">
		  <div class="form-group">
		    <label>${mvo.memName}님 방문을 환영합니다.</label>
		  </div>
		  <button type="submit" class="btn btn-default">로그아웃</button>
		</form>
	  </c:if>
	  </div>
    		<div class="panel-body">
    			<table class="table table-hover table-bordered">
    				<tr class="info">
    					<td>번호</td>
    					<td>제목</td>
    					<td>조회수</td>
    					<td>작성자</td>
    					<td>작성일</td>
    				</tr>
    				<c:forEach var="vo" items="${list}">
    				<tr>
    					<td>${vo.idx }</td>
    					<td><a href="${cpath}/boardView.do?idx=${vo.idx}">${vo.title }</a></td>
    					<td>${vo.count }</td>
    					<td>${vo.writer }</td>
    					<td>${vo.indate }</td>					    				
    				</tr>
    				</c:forEach>
    				<c:if test="${!empty mvo}">
    				<tr>
    					<td colspan="5">
    						<button type="button" class="btn btn-sm btn-primary" onclick="location.href='${cpath}/boardWrite.do'">글쓰기</button>
    					</td>
    				</tr>
    				</c:if>
    			</table>    	
    	</div>
  	</div>
</div>
</body>
</html>