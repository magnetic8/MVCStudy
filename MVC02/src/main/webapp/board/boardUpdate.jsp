<%@page import="kr.board.entity.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Board vo=(Board)request.getAttribute("vo");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
 
<div class="container">
  <h2>MVC02</h2>
  <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">
    	<form action="/MVC02/boardUpdate.do" method="post">
    	<input type="hidden" name="num" value="<%= vo.getNum() %>"/>
    		<table class="table table-bordered">
    			<tr>
    				<td>제목</td>
    				<td><input type="text" name="title" class="form-control" value="<%=vo.getTitle()%>"/></td>
    			</tr>
    			<tr>
    				<td>내용</td>
    				<td><textarea rows="10" name="content" class="form-control"><%=vo.getContent() %></textarea></td>
    			</tr>
    			<tr>
    			<td colspan="2" align="center">
    			<button type="submit" class="btn btn-sm btn-primary">수정</button>
    			<button type="reset" class="btn btn-sm btn-warning">취소</button>
    			<button type="button" class="btn btn-sm btn-success" onclick="location.href='/MVC02/boardList.do'">리스트</button>
    			</td>
    			</tr>
    		</table>  	
    	</form>
    </div>
    <div class="panel-footer">Spring특화과정A_정유리</div>
  </div>
</div>

</body>
</html>
