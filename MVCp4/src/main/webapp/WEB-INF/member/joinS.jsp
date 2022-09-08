<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<jsp:useBean id="vo" class="kr.board.entity.Member">
	<jsp:setProperty property="*" name="vo"/>
</jsp:useBean>
<% 
MemberMyBatisDAO dao = new MemberMyBatisDAO();
int cnt = dao.join(vo);
if(cnt > 0) {
	out.println("<script>alert('가입 성공!')");
	out.println("location.href='loginForm.jsp'</script>");
} else {
	out.println("<script>alert('가입 실패!')");
	out.println("location.href='join.jsp'</script>");
}
%>