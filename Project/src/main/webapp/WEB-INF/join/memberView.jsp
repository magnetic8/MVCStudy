<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" href="/img/favi/favicon.ico">
<link rel="apple-touch-icon" sizes="57x57" href="${cpath }/img/fav/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="${cpath }/img/fav/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="${cpath }/img/fav/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="${cpath }/img/fav/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="${cpath }/img/fav/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="${cpath }/img/fav/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="${cpath }/img/fav/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="${cpath }/img/fav/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="${cpath }/img/fav/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="${cpath }/img/fav/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="${cpath }/img/fav/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="${cpath }/img/fav/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="${cpath }/img/fav/favicon-16x16.png">
<link rel="manifest" href="${cpath }/img/fav/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="${cpath }/img/fav//ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, viewport-fit=cover" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>FOR THE URTH</title>
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
	location.href="${cpath}/memberUpdateForm.do?login_id="+login_id;
}
function fn_subdel(login_id){
	if(confirm("?????? ?????????????????????????"))
	location.href="${cpath}/memberDelete.do?login_id="+login_id;
}

</script>

<body>
	<div class="page">
		<div class="page-main">
			<!-- WEB-INF???????????? ????????? page="../header/header.jsp"??? ?????? -->
			<jsp:include page="../../header/header.jsp" />
			<!-- ???????????? header -->


			<!------------???????????? ??????----------->
			<div class="container-xl">
		<div class="page-header mb-3">
			<div class="row align-items-center mw-100 mt-4">
				<div class="col">
					<div class="mb-1"></div>

				</div>

			</div>
		</div>
		<div class="row">
			<div class="col-12 col-md-3 px-4 ">
				<!--????????? ??????-->

				<div class="card-body text-center mb-4">
				<c:if test="${mvo.u_grade eq '???????????????'}">
					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(${cpath}/img/my/p1.jpg)"></span>
					</c:if>
					<c:if test="${mvo.u_grade eq '???????????????'}">
					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(${cpath}/img/my/p2.jpg)"></span>
					</c:if>
					<c:if test="${mvo.u_grade eq '???????????????'}">
					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(${cpath}/img/my/p3.jpg)"></span>
					</c:if>
					<c:if test="${mvo.u_grade eq '??????????????????'}">
					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(${cpath}/img/my/p4.jpg)"></span>
					</c:if>
					<c:if test="${mvo.u_grade eq 'admin'}">
					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(${cpath}/img/my/kf.gif)"></span>
					</c:if>
					<h3 class="m-0 mb-1">
						<a href="#">${mvo.u_nick }</a>
					</h3>
					<div class="text-muted">${mvo.login_id }</div>
					<div class="mt-3">
						<span class="badge bg-blue-lt">${mvo.u_grade}</span>
					</div>
				</div>
				<!-- ????????? ???-->

				<div class="progress mb-2">
					<div class="progress-bar" style="width: ${mvo.u_point}%" role="progressbar"
						aria-valuenow="38" aria-valuemin="0" aria-valuemax="100"
						aria-label="38% Complete">
						<span class="visually-hidden">38% Complete</span>
					</div>
				</div>
				<p class="text-center">
					<small>?????? ????????????<span class="text-orange strong">${100-mvo.u_point}</span> ?????????</small>
				</p>
				<div
					class="list-group list-group-transparent mb-3 ml-3  theme-light mb-5">
					<a
						class="list-group-item list-group-item-action d-flex align-items-center"
						href="${cpath}/memberView.do"> ??? ????????? ?????? </a> <a
						class="list-group-item list-group-item-action d-flex align-items-center"
						href="${cpath}/mypageWrite.do"> ?????? ??? ??? <small class="text-muted ms-auto">${cmw} </small>
					</a> <a
						class="list-group-item list-group-item-action d-flex align-items-center"
						href="${cpath}/mypageComment.do"> ?????? ??? ?????? <small class="text-muted ms-auto">${cmc} </small>
					</a>
				</div>
			</div>
			<div class="col-12 col-md-9">
				<div class="row">
					<div class="col-12">
						<!-- ?????????-->
				<div class="row">
				<div class="col"></div>
					<!-- <div class="col-md-10"> -->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">????????????</h3>
							</div>
							<div class="card-body">
								<form method="post" action="${cpath}/join.do" name="frm"
									onsubmit="return checkValue()">
									
									<input type="hidden" name="chk" value=0>
									<div class="form-group mb-3 ">
									
										<label class="form-label required">?????????</label> <small>${vo.login_id}</small>  
									</div>
									<div class="form-group mb-3 ">
                      <label class="form-label required">??????</label>
                      <small>${vo.user_name}</small>   
                                       
										</div>
										
																	                     					 
									<div class="form-group mb-3 ">
										<label class="form-label required">????????????</label> 
										<small>${vo.u_pw}</small>
										</div>
										
										<div class="form-group mb-3 ">
                      <label class="form-label required">????????????</label>
                      <small>${fn:split(vo.joindate," ")[0]}</small>   
                                       
										</div>
										
                      
										<div class="form-group mb-3 ">
											<label class="form-label required">?????????</label> 
											<small>${vo.u_nick}</small>
											
										</div>
									
									<div class="form-group mb-3 ">
										<label class="form-label required">??????</label> 
										<small>${fn:split(vo.u_birthdate," ")[0]}</small>
									</div>
									<div class="form-group mb-3 ">
										<label class="form-label required">??????</label>
										<small>${vo.post}</small>
										<small>${vo.u_addr}</small>
				
										
									</div>

									<div class="form-footer">
										<button type="submit" class="btn btn-primary"
											onclick="fn_submit('${vo.login_id}');return false;">???????????? ??????</button>
										<button type="submit" class="btn btn-warning"
											onclick="fn_subdel('${vo.login_id}');return false;">???????????? ??????</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ????????? -->
					</div>
				</div>
			</div>
		</div>
	</div>

	</div>
	</div>
			<!-- footer -->
			<!-- WEB-INF???????????? ????????? page="../footer/footer.jsp"??? ?????? -->
			<jsp:include page="../../footer/footer.jsp" />
		</div>
	</div>
</body>

</html>