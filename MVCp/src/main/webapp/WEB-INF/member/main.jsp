<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여기는 메인페이지~~~</h1>
<button onclick="location.href='${cpath}/loginForm.do'">로그인</button>
<button onclick="location.href='${cpath}/joinForm.do'">회원가입</button>
</body>
</html>