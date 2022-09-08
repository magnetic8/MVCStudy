<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, viewport-fit=cover" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>empty</title>
<!-- CSS files -->
<link href="./css/tabler.css" rel="stylesheet" />
<link href="./css/tabler-vendors.css" rel="stylesheet" />

<!-- Libs JS -->

<!-- Tabler Core -->
<script src="./js/tabler.min.js" defer></script>

<!-- my -->
<link rel="stylesheet" href="./css/my/sub.css">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	viewport-fit=cover" >
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>


</head>
<script type="text/javascript">

function fn_submit(login_id){
	location.href="${cpath}/memberUpdate.do?login_id="+login_id;
}

</script>

<body>
	<div class="page">
		<div class="page-main">
			<!-- WEB-INF폴더에서 사용시 page="../header/header.jsp"로 변경 -->
			<jsp:include page="./header1/header.jsp" />
			<!-- 여기까지 header -->









			<!------------여기부터 입력----------->
			<div class="container">
				<div class="row">
				<div class="col"></div>
					<div class="col-md-10">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">회원정보</h3>
							</div>
							<div class="card-body">
								<form method="post" action="${cpath}/join.do" name="frm"
									onsubmit="return checkValue()">
									
									<input type="hidden" name="chk" value=0>
									<div class="form-group mb-3 ">
									
										<label class="form-label required">아이디</label> <small>${vo.login_id}</small>  
									</div>
									<div class="form-group mb-3 ">
                      <label class="form-label required">이름</label>
                      <small>${vo.user_name}</small>   
                                       
										</div>
										
																	                     					 
									<div class="form-group mb-3 ">
										<label class="form-label required">비밀번호</label> 
										<small>${vo.u_pw}</small>
										</div>
										<div class="form-group mb-3 ">
                      <label class="form-label required">가입날짜</label>
                      <small>${vo.joindate}</small>   
                                       
										</div>
										
                      
										<div class="form-group mb-3 ">
											<label class="form-label required">닉네임</label> 
											<small>${vo.u_nick}</small>
											
										</div>
									
									<div class="form-group mb-3 ">
										<label class="form-label required">생일</label> 
										<small>${vo.u_birthdate}</small>
									</div>
									<div class="form-group mb-3 ">
										<label class="form-label required">주소</label>
										<small>${vo.post}</small>
										<small>${vo.u_addr}</small>
				
										
									</div>

									<div class="form-footer">
										<button type="submit" class="btn btn-primary"
											onclick="fn_submit();return false;">회원정보 수정</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer -->
			<!-- WEB-INF폴더에서 사용시 page="../footer/footer.jsp"로 변경 -->
			jsp:include page="./footer/footer.jsp" />
		</div>
	</div>
</body>

</html>