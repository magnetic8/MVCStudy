<%@page import="kr.board.entity.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	List<Board> list=(List<Board>)request.getAttribute("list");
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
 <jsp:include page="../header/header.jsp"/>
<div class="container">	
  <h2>MVC02</h2>
  <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">
    <table class="table table-bordered table-hover">
    <tr>
    <td>번호</td>
    <td>제목</td>
    <td>작성자</td>
    <td>작성일</td>
    <td>조회수</td>
    </tr>
    <%for(Board vo:list){ %>
    <tr>
    <td><%=vo.getNum()%></td>
    <td><a href="/MVC02/boardView.do?num=<%=vo.getNum()%>"><%=vo.getTitle()%></a></td>
    <td><%=vo.getWriter()%></td>
    <td><%=vo.getIndate()%></td>
    <td><%=vo.getCount()%></td>
    </tr>
    <% } %>
    <tr>
    <td colspan="5">
    <button class="btn btn-success btn-sm" onclick="location.href='/MVC02/boardWriteForm.do'">글쓰기</button>   
    </td>
    </tr>
    </table>
    </div>
    <div class="panel-footer">Spring특화과정A_정유리</div>
  </div>
</div>

</body>
</html>
