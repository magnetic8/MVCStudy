<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />  --%>
<style>
   
   html,
   body {
     height: 100%;
   }
   
   body {
     display: flex;
     align-items: center;
     padding-top: 40px;
     padding-bottom: 40px;
     background-color: #f5f5f5;
   }
   
   .form-signin {
     width: 100%;
     max-width: 330px;
     padding: 15px;
     margin: auto;
   }
   
   .form-signin .checkbox {
     font-weight: 400;
   }
   
   .form-signin .form-floating:focus-within {
     z-index: 2;
   }
   
   .form-signin input[type="email"] {
     margin-bottom: -1px;
     border-bottom-right-radius: 0;
     border-bottom-left-radius: 0;
   }
   
   .form-signin input[type="password"] {
     margin-bottom: 10px;
     border-top-left-radius: 0;
     border-top-right-radius: 0;
   }

</style>
<%--  <script src="${cpath}/src/main/webapp/css/signin.css"></script>  --%>
</head>
<body class="text-center">
   <main class="form-signin">
      <form action="${cpath}/login.do" method="post">
        
         <h1 class="h3 mb-3 fw-normal">로그인 페이지</h1>
         
         <div class="form-floating">
            <label for="user_id">아이디</label>
            <input type="text" class="form-control" id="user_id" name="user_id" placeholder="아이디 입력...">
         </div>
         <div class="form-floating">
            <label for="pw">비밀번호</label>
            <input type="password" class="form-control" id="pw" name="pw" placeholder="Password">
         </div>
         
           
         </div>
         <button type="submit">로그인</button>
         <button type="button" onclick="location.href='${cpath}/joinForm.do'">회원가입</button>
      </form>
         <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
   </main>
   
</body>
</html>