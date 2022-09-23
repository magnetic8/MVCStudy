<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".btn").click(function(){
			$.ajax({
				url: "${cpath}/bible.do",
				type : "get",
				dataType: "html",
				success : parseHtml,
				error : function(){alert("error");}
			});
			
		});
		
	});
	function parseHtml(data){
		alert(data);
	}

</script>

</head>
<body>
<button class="btn btn-default">데이터 가져오기</button>
<div>결과 출력</div>
</body>
</html>