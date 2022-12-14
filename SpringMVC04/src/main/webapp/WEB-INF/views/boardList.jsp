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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script type="text/javascript">
	$(document).ready(function(){
		// 1,2,3 페이지 번호를 클릭했을 때 감지
		$(".pagination a").click(function(e){ 
			e.preventDefault();
			var page=$(this).attr("href");
			document.frm.page.value=page;
			document.frm.submit(); // 전송
		});		
	});
</script>

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
    					<td>
    				    <c:if test="${vo.boardLevel>0 }">
	    					<c:forEach begin="0" end="${vo.boardLevel }">
	    					  <span style="padding-left: 10px"></span>   					
	    					</c:forEach>
    				   </c:if>    				
    					<c:if test="${ vo.boardLevel>0}">
    					  <c:if test="${vo.boardAvailable==1 }">  					
    				      <a href="${cpath}/boardView.do?idx=${vo.idx}"><span class="bi bi-reply" style="color: red;"></span>${vo.title }</a>
    					</c:if>  
    					<c:if test="${vo.boardAvailable==0 }">  					
    				      삭제된 게시물입니다.
    					</c:if> 
    					
    					</c:if>
    					<c:if test="${ vo.boardLevel==0}">  
    					<c:if test="${vo.boardAvailable==1 }">	
    					  <a href="${cpath}/boardView.do?idx=${vo.idx}">${vo.title }</a>
    					</c:if>
    					<c:if test="${vo.boardAvailable==0 }">  					
    				      삭제된 게시물입니다.
    					</c:if>
    					</c:if>
    					</td>
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
    				<form action="${cpath}/boardList.do" method="post">
    				<table class="table">
				<tr>
				  <td style="text-align: center;">
				     <select name="type" class="form-control">
				       <option value="writer" ${pageMaker.cri.type=='writer' ? 'selected' : '' }>이름</option>
				       <option value="title" ${pageMaker.cri.type=='title' ? 'selected' : '' }>제목</option>
				       <option value="contents" ${pageMaker.cri.type=='contents' ? 'selected' : '' }>내용</option>
				     </select>
				  </td>
				  <td>
				     <input type="text" name="keyword" class="form-control" value="${pageMaker.cri.keyword }"/>
				  </td>
				  <td>
				     <button type="submit" class="btn btn-sm btn-success">검색</button>
				  </td>
				</tr>
			 </table>
    			   </form>
    			   
    				<form name="frm" action="${cpath }/boardList.do" method="post">
    				<div style="text-align: center;">
    						<ul class="btn-group pagination">
    						<!-- 이전 페이지 -->
    						<c:if test="${pageMaker.prev }">
    							<li><i class="fa"><a href="${pageMaker.startPage-1}">◀</a></i></li>    					
    						</c:if>
    						
    						<!-- 페이징 처리 -->
    							<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
    							 <c:if test="${pageMaker.cri.page==pageNum }">
    								<li><i class="fa"><a href="${pageNum}"><font color="red">${pageNum }</font></a></i></li>
    							 </c:if>
    							 <c:if test="${pageMaker.cri.page!=pageNum }">
    								<li><i class="fa"><a href="${pageNum}">${pageNum }</a></i></li>
    							 </c:if>
    							</c:forEach>
    							<!-- 다음 페이지 -->
    						<c:if test="${pageMaker.next}">
    							<li><i class="fa"><a href="${pageMaker.endPage+1}">▶</a></i></li>    					
    						</c:if>
    						</ul>
    					 </div>	
    					 <input type="hidden" name="page" value="${pageMaker.cri.page }"/>
    					 <input type="hidden" name="type" value="${pageMaker.cri.type }"/>
    					 <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }"/>
    					 </form>
    	</div>
  	</div>
</div>
</body>
</html>