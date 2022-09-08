<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https:/ /maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script type="text/javascript">
  	$(document).ready(function(){
  		loadList();
  	});
  	function loadList(){
  		$.ajax({
  			url : "${cpath}/boardList.do",
  			type : "get",
  			dataType :"json",
  			success : resultHtml,
  			error : function(){alert("error");}
  		});
  	}
  	
  	
  	function resultHtml(data){
  		// 동적인 view 만들기
  		var html ="<table class='table table-bordered'>";
  		html+="<tr>"
  		html+="<td>번호</td>";
  		html+="<td>제목</td>";
  		html+="<td>작성자</td>";
  		html+="<td>작성일</td>";
  		html+="<td>조회수</td>";
  		html+="</tr>";
  		
		$.each(data, function(index, obj){
			html+="<tr>";
		  	html+="<td >"+obj.num+"</td>";
		  	html+="<td id='t"+obj.num+"'><a href='javascript:goView("+obj.num+")'>"+obj.title+"</a></td>";
		  	html+="<td>"+obj.writer+"</td>";
		  	html+="<td>"+obj.indate+"</td>";
		  	html+="<td id='cnt"+obj.num+"'>"+obj.count+"</td>";
		  	html+="</tr>";
		  	
		  	html+="<tr id='ct"+obj.num+"' style='display:none'>";
		  	html+="<td>내용</td>"
		  	html+="<td colspan='4'>";
		  	html+="<textarea id='ta"+obj.num+"'readonly rows='7' class='form-control'>"+obj.content+"</textarea>"
		  	html+="<br>"
			html+="<span id='ub"+obj.num+"'><button onclick='goUpdateForm("+obj.num+")' class='btn btn-sm btn-info'>수정</button></span>&nbsp";
			html+="<button onclick='goDel("+obj.num+")' class='btn btn-sm btn-warning'>삭제</button>&nbsp";
			html+="<button onclick='loadList()' class='btn btn-sm btn-success'>리스트</button>";
			html+="</td>";
		  	html+="</tr>";
		});
  		
		html+="<tr>";
		html+="<td colspan='5'>";
		html+="<button onclick='goWrite()' class='btn btn-sm btn-primary'>글쓰기</button>";
		html+="</td>";
		html+="</tr>";
		
  		html+="</table>";
  		$('#list').html(html);
  		
  		$('#list').css("display","block");
  		$('#write').css("display","none");
  		
  		
  	}
  	function goWrite(){
  		$('#list').css("display","none");
  		$('#write').css("display","block");
  	}
  	function goInsert(){
  		var fData = $('#frm').serialize();
  		$.ajax({
  			url :"${cpath}/boardWrite.do",
  			type :"post",
  			data : fData,
  			success : loadList,
  			error : function(){alert("error");}
  		});
  		$('#reset').trigger('click');
  	}
  	function goView(num){
  		if($('#ct'+num).css('display')=="none"){
  			$('#ct'+num).css('display','table-row');
  			// 조회수
  			$.ajax({
  				url :"${cpath}/boardView.do",
  				type : "get",
  				data : {"num":num},
  				success : function(count){
  					//조회수 수정
  					$('#cnt'+num).text(count);
  				},
  				error:function(){alert("error");}
  			});
  		}else{
  			$('#ct'+num).css('display','none');
  		}
  		
  		
  	}
  	function goDel(num){
  		$.ajax({
  			url : "${cpath}/boardDelete.do",	
  			type : "get",
  			data : {"num":num},
  			success : loadList,
  			error : function(){alert("error");}
  		});
  	}
  	function goUpdateForm(num){
  		// title 수정
  		var title=$('#t'+num).text();
  		var titleInput = "<input type ='text' id='nt"+num+"' value='"+title+"' class='form-control'/>";
  		$('#t'+num).html(titleInput);
  		// content 수정
  		$('#ta'+num).attr("readonly",false);
  		// 수정 버튼 -> 수정하기 버튼으로 변경
  		var updateBtn="<button onclick='goUpdate("+num+")' class='btn btn-sm btn-primary'>수정하기</button>"
  		$('#ub'+num).html(updateBtn);
  		
  	}
  	function goUpdate(num){
  		var title = $('#nt'+num).val();
		var content = $('#ta'+num).val();
  		$.ajax({
  			
  			url : "${cpath}/boardUpdate.do",
  			type : "post",
  			data : {"num":num,"title":title,"content":content},
  			success : loadList,
  			error : function(){alert("error");}
  			
  		});
  	}
  	
  	
  </script>
</head>
<body>
 <jsp:include page="../header/header.jsp"/>
<div class="container">
  <h2>mvc06</h2>
  <div class="panel panel-default">
    <div class="panel-heading" >
      <c:if test="${empty mvo }">
    	<form class="form-inline" action="${cpath}/login.do">
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
    <div class="panel-body" id="list">
    </div>
    <div class="panel-body" id="write" style="display: none">
    	<form id="frm">
    		<table class="table table-bordered">
    			<tr>
    				<td>제목</td>
    				<td><input type="text" name="title"  id="title" class="form-control"/></td>
    			</tr>
    			<tr>
    				<td>내용</td>
    				<td><textarea rows="10" name="content" id="content" class="form-control"></textarea></td>
    			</tr>
    			<tr>
    				<td>작성자</td>
    				<td><input type="text" name="writer" id="writer" class="form-control"/></td>
    			</tr>
    			<tr>
    				<Td colspan="2">
    				<button type="button" class="btn btn-success btn-sm" onclick="goInsert()">등록</button>
    				<button type="reset" class ="btn btn-warning btn-sm" id="reset">취소</button>
    				</Td>
    			</tr>
    		</table>
    	</form>
    </div>
    <div class="panel-footer" ></div>
  </div>
</div>
</body>
</html>
