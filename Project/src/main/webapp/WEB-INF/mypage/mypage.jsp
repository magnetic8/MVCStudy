<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="${cpath}/css/tabler.css" rel="stylesheet" />
<link href="${cpath}/css/tabler-vendors.css" rel="stylesheet" />

<!-- Libs JS -->

<!-- Tabler Core -->
<script src="${cpath}/js/tabler.min.js" defer></script>

<!-- my -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${cpath}/css/my/sub.css">
<link rel="stylesheet" href="${cpath}/css/my/kakao.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	viewport-fit=cover" >
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>


</head>
<body>
	<!-- WEB-INF???????????? ????????? page="../header/header.jsp"??? ?????? -->
	<jsp:include page="../../header/header.jsp" />
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
				<c:if test="${mvo.u_grade eq '??????'}">
					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(${cpath}/img/my/K-002.jpg)"></span>
					</c:if>
					<c:if test="${mvo.u_grade eq '??????'}">
					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(${cpath}/img/my/K-001.jpg)"></span>
					</c:if>
					<c:if test="${mvo.u_grade eq '??????'}">
					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(${cpath}/img/my/K-002.jpg)"></span>
					</c:if>
					<c:if test="${mvo.u_grade eq '???'}">
					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(${cpath}/img/my/K-002.jpg)"></span>
					</c:if>
					<c:if test="${mvo.u_grade eq 'admin'}">
					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(${cpath}/img/my/K-004.jpg)"></span>
					</c:if>
<!-- 					<span class="avatar avatar-xl mb-3 avatar-rounded" style="background-image: url(https://img.freepik.com/premium-vector/illustration-of-earth-character-sprouts_279539-60.jpg?w=1060)"></span> -->
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
						

							<!-- tab??? -->


						</div>
					</div>
				</div>
			</div>
	<jsp:include page="../../footer/footer.jsp" />
		</div>

	<!-- footer -->
	<!-- WEB-INF???????????? ????????? page="../footer/footer.jsp"??? ?????? -->



</body>
</html>