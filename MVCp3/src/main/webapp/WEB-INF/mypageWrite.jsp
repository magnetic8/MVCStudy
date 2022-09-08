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
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	viewport-fit=cover" >
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>


</head>
<body>
	<!-- WEB-INF폴더에서 사용시 page="../header/header.jsp"로 변경 -->
	<jsp:include page="../../header/header.jsp" />
	<!------------여기부터 입력----------->
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
				<!--프로필 시작-->

				<div class="card-body text-center mb-4">
					<span class="avatar avatar-xl mb-3 avatar-rounded"
						style="background-image: url(https://img.freepik.com/premium-vector/illustration-of-earth-character-sprouts_279539-60.jpg?w=1060)"></span>
					<h3 class="m-0 mb-1">
						<a href="#">닉네임</a>
					</h3>
					<div class="text-muted">ID</div>
					<div class="mt-3">
						<span class="badge bg-blue-lt">등급</span>
					</div>
				</div>
				<!-- 프로필 끝-->

				<div class="progress mb-2">
					<div class="progress-bar" style="width: 20%" role="progressbar"
						aria-valuenow="38" aria-valuemin="0" aria-valuemax="100"
						aria-label="38% Complete">
						<span class="visually-hidden">38% Complete</span>
					</div>
				</div>
				<p class="text-center">
					<small>포인트</small>
				</p>
				<div
					class="list-group list-group-transparent mb-3 ml-3  theme-light mb-5">
					<a
						class="list-group-item list-group-item-action d-flex align-items-center"
						href="#"> 내 프로필 수정 </a> <a
						class="list-group-item list-group-item-action d-flex align-items-center"
						href="#"> 내가 쓴 글 <small class="text-muted ms-auto">45</small>
					</a> <a
						class="list-group-item list-group-item-action d-flex align-items-center"
						href="#"> 내가 쓴 댓글 <small class="text-muted ms-auto">88</small>
					</a>
				</div>
			</div>
			<div class="col-12 col-md-9">
				<div class="row">
					<div class="col-12">
						<!-- 게시판-->
						<div class="ms-1 mb-3 mt-3">
							<h1>내가 쓴 글</h1>
						</div>
						<div class="col-12 mt-1 mb-5">
							<!-- tab -->
							<div class="card">
								<ul class="nav nav-tabs nav-tabs-alt" data-bs-toggle="tabs"
									role="tablist">
									<li class="nav-item" role="presentation"><a
										href="#tabs-home-12" class="nav-link active"
										data-bs-toggle="tab" aria-selected="true" role="tab"> <!-- Download SVG icon from http://tabler-icons.io/i/home -->
											함께해요
									</a></li>
									<li class="nav-item" role="presentation"><a
										href="#tabs-profile-12" class="nav-link" data-bs-toggle="tab"
										aria-selected="false" tabindex="-1" role="tab"> <!-- Download SVG icon from http://tabler-icons.io/i/user -->
											제로 웨이스트
									</a></li>
									<li class="nav-item" role="presentation"><a
										href="#tabs-profile-12" class="nav-link" data-bs-toggle="tab"
										aria-selected="false" tabindex="-1" role="tab"> <!-- Download SVG icon from http://tabler-icons.io/i/user -->
											234
									</a></li>
									<li class="nav-item" role="presentation"><a
										href="#tabs-profile-12" class="nav-link" data-bs-toggle="tab"
										aria-selected="false" tabindex="-1" role="tab"> <!-- Download SVG icon from http://tabler-icons.io/i/user -->
											345345
									</a></li>

								</ul>
								<div class="card-body">
									<div class="tab-content">
										<div class="tab-pane active show" id="tabs-home-12"
											role="tabpanel">
											<div>
												<div class="bg-light border-y">
													<div class="table-responsive">
														<table class="table table-vcenter table-hover">
															<thead>
																<tr>
																	<th>번호</th>
																	<th>제목</th>
																	<th>게시판</th>
																	<th>등록일</th>
																	<th>조회</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset ">111111<span
																			class="text-ornage">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>

															</tbody>
														</table>
													</div>
													<div class="card-footer d-flex align-items-center py-2">
														<ul class="pagination m-0 m-auto">
															<li class="page-item disabled"><a class="page-link"
																href="#" tabindex="-1" aria-disabled="true"> <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                              <polyline points="15 6 9 12 15 18" />
                            </svg> prev
															</a></li>
															<li class="page-item"><a class="page-link" href="#">1</a></li>
															<li class="page-item active"><a class="page-link"
																href="#">2</a></li>
															<li class="page-item"><a class="page-link" href="#">3</a></li>
															<li class="page-item"><a class="page-link" href="#">4</a></li>
															<li class="page-item"><a class="page-link" href="#">5</a></li>
															<li class="page-item"><a class="page-link" href="#">
																	next <!-- Download SVG icon from http://tabler-icons.io/i/chevron-right -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                              <polyline points="9 6 15 12 9 18" />
                            </svg>
															</a></li>
														</ul>

													</div>
													<form action="#" method="#">
														<div class="card-footer">
															<div class="row m-auto mb-3">

																<div class="col-3"></div>
																<div class="col-auto">
																	<select type="text" class="form-select"
																		placeholder="Select a date" id="select-tags" value="">
																		<option value="title">제목</option>
																		<option value="content">내용</option>
																	</select>
																</div>
																<div class="col-4">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			aria-label="Text input with dropdown button">
																	</div>
																</div>
																<div class="col-1">
																	<button type="submit" class="btn btn-icon"
																		value="Submit">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			class="icon icon-tabler icon-tabler-search"
																			width="24" height="24" viewBox="0 0 24 24"
																			stroke-width="2" stroke="currentColor" fill="none"
																			stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z"
																				fill="none"></path>
                                <circle cx="10" cy="10" r="7"></circle>
                                <line x1="21" y1="21" x2="15" y2="15"></line>
                              </svg>
																	</button>

																	</a>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tabs-profile-12" role="tabpanel">
											<div>
												<div class="bg-light border-y">
													<div class="table-responsive">
														<table class="table table-vcenter table-hover">
															<thead>
																<tr>
																	<th>번호</th>
																	<th>제목</th>
																	<th>게시판</th>
																	<th>등록일</th>
																	<th>조회</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset ">22222<span
																			class="text-ornage">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>

															</tbody>
														</table>
													</div>
													<div class="card-footer d-flex align-items-center py-2">
														<ul class="pagination m-0 m-auto">
															<li class="page-item disabled"><a class="page-link"
																href="#" tabindex="-1" aria-disabled="true"> <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                              <polyline points="15 6 9 12 15 18" />
                            </svg> prev
															</a></li>
															<li class="page-item"><a class="page-link" href="#">1</a></li>
															<li class="page-item active"><a class="page-link"
																href="#">2</a></li>
															<li class="page-item"><a class="page-link" href="#">3</a></li>
															<li class="page-item"><a class="page-link" href="#">4</a></li>
															<li class="page-item"><a class="page-link" href="#">5</a></li>
															<li class="page-item"><a class="page-link" href="#">
																	next <!-- Download SVG icon from http://tabler-icons.io/i/chevron-right -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                              <polyline points="9 6 15 12 9 18" />
                            </svg>
															</a></li>
														</ul>

													</div>
													<form action="#" method="#">
														<div class="card-footer">
															<div class="row m-auto mb-3">

																<div class="col-3"></div>
																<div class="col-auto">
																	<select type="text" class="form-select"
																		placeholder="Select a date" id="select-tags" value="">
																		<option value="title">제목</option>
																		<option value="content">내용</option>
																	</select>
																</div>
																<div class="col-4">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			aria-label="Text input with dropdown button">
																	</div>
																</div>
																<div class="col-1">
																	<button type="submit" class="btn btn-icon"
																		value="Submit">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			class="icon icon-tabler icon-tabler-search"
																			width="24" height="24" viewBox="0 0 24 24"
																			stroke-width="2" stroke="currentColor" fill="none"
																			stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z"
																				fill="none"></path>
                                <circle cx="10" cy="10" r="7"></circle>
                                <line x1="21" y1="21" x2="15" y2="15"></line>
                              </svg>
																	</button>

																	</a>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tabs-profile-12" role="tabpanel">
											<div>
												<div class="bg-light border-y">
													<div class="table-responsive">
														<table class="table table-vcenter table-hover">
															<thead>
																<tr>
																	<th>번호</th>
																	<th>제목</th>
																	<th>게시판</th>
																	<th>등록일</th>
																	<th>조회</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset ">22222<span
																			class="text-ornage">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>

															</tbody>
														</table>
													</div>
													<div class="card-footer d-flex align-items-center py-2">
														<ul class="pagination m-0 m-auto">
															<li class="page-item disabled"><a class="page-link"
																href="#" tabindex="-1" aria-disabled="true"> <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                              <polyline points="15 6 9 12 15 18" />
                            </svg> prev
															</a></li>
															<li class="page-item"><a class="page-link" href="#">1</a></li>
															<li class="page-item active"><a class="page-link"
																href="#">2</a></li>
															<li class="page-item"><a class="page-link" href="#">3</a></li>
															<li class="page-item"><a class="page-link" href="#">4</a></li>
															<li class="page-item"><a class="page-link" href="#">5</a></li>
															<li class="page-item"><a class="page-link" href="#">
																	next <!-- Download SVG icon from http://tabler-icons.io/i/chevron-right -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                              <polyline points="9 6 15 12 9 18" />
                            </svg>
															</a></li>
														</ul>

													</div>
													<form action="#" method="#">
														<div class="card-footer">
															<div class="row m-auto mb-3">

																<div class="col-3"></div>
																<div class="col-auto">
																	<select type="text" class="form-select"
																		placeholder="Select a date" id="select-tags" value="">
																		<option value="title">제목</option>
																		<option value="content">내용</option>
																	</select>
																</div>
																<div class="col-4">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			aria-label="Text input with dropdown button">
																	</div>
																</div>
																<div class="col-1">
																	<button type="submit" class="btn btn-icon"
																		value="Submit">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			class="icon icon-tabler icon-tabler-search"
																			width="24" height="24" viewBox="0 0 24 24"
																			stroke-width="2" stroke="currentColor" fill="none"
																			stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z"
																				fill="none"></path>
                                <circle cx="10" cy="10" r="7"></circle>
                                <line x1="21" y1="21" x2="15" y2="15"></line>
                              </svg>
																	</button>

																	</a>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tabs-profile-12" role="tabpanel">
											<div>
												<div class="bg-light border-y">
													<div class="table-responsive">
														<table class="table table-vcenter table-hover">
															<thead>
																<tr>
																	<th>번호</th>
																	<th>제목</th>
																	<th>게시판</th>
																	<th>등록일</th>
																	<th>조회</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset ">22222<span
																			class="text-ornage">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>
																<tr>
																	<td class="text-center">01</td>
																	<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
																			class="text-orange">&nbsp;[2]</span></a></td>
																	<td class="text-muted  text-center">게시판이름</td>
																	<td class="text-muted  text-center">2022-01-01</td>
																	<td class="text-muted  text-center">123</td>
																</tr>

															</tbody>
														</table>
													</div>
													<div class="card-footer d-flex align-items-center py-2">
														<ul class="pagination m-0 m-auto">
															<li class="page-item disabled"><a class="page-link"
																href="#" tabindex="-1" aria-disabled="true"> <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                              <polyline points="15 6 9 12 15 18" />
                            </svg> prev
															</a></li>
															<li class="page-item"><a class="page-link" href="#">1</a></li>
															<li class="page-item active"><a class="page-link"
																href="#">2</a></li>
															<li class="page-item"><a class="page-link" href="#">3</a></li>
															<li class="page-item"><a class="page-link" href="#">4</a></li>
															<li class="page-item"><a class="page-link" href="#">5</a></li>
															<li class="page-item"><a class="page-link" href="#">
																	next <!-- Download SVG icon from http://tabler-icons.io/i/chevron-right -->
																	<svg xmlns="http://www.w3.org/2000/svg" class="icon"
																		width="24" height="24" viewBox="0 0 24 24"
																		stroke-width="2" stroke="currentColor" fill="none"
																		stroke-linecap="round" stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z"
																			fill="none" />
                              <polyline points="9 6 15 12 9 18" />
                            </svg>
															</a></li>
														</ul>

													</div>
													<form action="#" method="#">
														<div class="card-footer">
															<div class="row m-auto mb-3">

																<div class="col-3"></div>
																<div class="col-auto">
																	<select type="text" class="form-select"
																		placeholder="Select a date" id="select-tags" value="">
																		<option value="title">제목</option>
																		<option value="content">내용</option>
																	</select>
																</div>
																<div class="col-4">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			aria-label="Text input with dropdown button">
																	</div>
																</div>
																<div class="col-1">
																	<button type="submit" class="btn btn-icon"
																		value="Submit">
																		<svg xmlns="http://www.w3.org/2000/svg"
																			class="icon icon-tabler icon-tabler-search"
																			width="24" height="24" viewBox="0 0 24 24"
																			stroke-width="2" stroke="currentColor" fill="none"
																			stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z"
																				fill="none"></path>
                                <circle cx="10" cy="10" r="7"></circle>
                                <line x1="21" y1="21" x2="15" y2="15"></line>
                              </svg>
																	</button>

																	</a>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- tab끝 -->
							<div class="bg-light border-y">
								<div class="table-responsive">
									<table class="table table-vcenter table-hover">
										<thead>
											<tr>
												<th>번호</th>
												<th>제목</th>
												<th>게시판</th>
												<th>등록일</th>
												<th>조회</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset ">제목제목제목제목제목제목<span
														class="text-ornage">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>
											<tr>
												<td class="text-center">01</td>
												<td><a href="#" class="text-reset">제목제목제목제목제목제목<span
														class="text-orange">&nbsp;[2]</span></a></td>
												<td class="text-muted  text-center">게시판이름</td>
												<td class="text-muted  text-center">2022-01-01</td>
												<td class="text-muted  text-center">123</td>
											</tr>

										</tbody>
									</table>
								</div>
								<div class="card-footer d-flex align-items-center py-2">
									<ul class="pagination m-0 m-auto">
										<li class="page-item disabled"><a class="page-link"
											href="#" tabindex="-1" aria-disabled="true"> <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
												<svg xmlns="http://www.w3.org/2000/svg" class="icon"
													width="24" height="24" viewBox="0 0 24 24" stroke-width="2"
													stroke="currentColor" fill="none" stroke-linecap="round"
													stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z"
														fill="none" />
                              <polyline points="15 6 9 12 15 18" />
                            </svg> prev
										</a></li>
										<li class="page-item"><a class="page-link" href="#">1</a></li>
										<li class="page-item active"><a class="page-link"
											href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">4</a></li>
										<li class="page-item"><a class="page-link" href="#">5</a></li>
										<li class="page-item"><a class="page-link" href="#">
												next <!-- Download SVG icon from http://tabler-icons.io/i/chevron-right -->
												<svg xmlns="http://www.w3.org/2000/svg" class="icon"
													width="24" height="24" viewBox="0 0 24 24" stroke-width="2"
													stroke="currentColor" fill="none" stroke-linecap="round"
													stroke-linejoin="round">
                              <path stroke="none" d="M0 0h24v24H0z"
														fill="none" />
                              <polyline points="9 6 15 12 9 18" />
                            </svg>
										</a></li>
									</ul>

								</div>
								<form action="#" method="#">
									<div class="card-footer">
										<div class="row m-auto mb-3">

											<div class="col-3"></div>
											<div class="col-auto">
												<select type="text" class="form-select"
													placeholder="Select a date" id="select-tags" value="">
													<option value="title">제목</option>
													<option value="content">내용</option>
												</select>
											</div>
											<div class="col-4">
												<div class="input-group">
													<input type="text" class="form-control"
														aria-label="Text input with dropdown button">
												</div>
											</div>
											<div class="col-1">
												<button type="submit" class="btn btn-icon" value="Submit">
													<svg xmlns="http://www.w3.org/2000/svg"
														class="icon icon-tabler icon-tabler-search" width="24"
														height="24" viewBox="0 0 24 24" stroke-width="2"
														stroke="currentColor" fill="none" stroke-linecap="round"
														stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z"
															fill="none"></path>
                                <circle cx="10" cy="10" r="7"></circle>
                                <line x1="21" y1="21" x2="15" y2="15"></line>
                              </svg>
												</button>

												</a>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	</div>
	</div>
	<!-- footer -->
	<!-- WEB-INF폴더에서 사용시 page="../footer/footer.jsp"로 변경 -->
	<jsp:include page="../../footer/footer.jsp" />
	</div>
	</div>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type='text/javascript'>
Kakao.init('281c02fa614e4ca369f032f5a1b0b714');


$("#kakao-login-btn").on("click", function(){
    //1. 로그인 시도
    Kakao.Auth.login({
        success: function(authObj) {
         
          //2. 로그인 성공시, API 호출
          Kakao.API.request({
            url: '/v2/user/me',
            data: {
                property_keys: ["kakao_account.email","kakao_account.profile.nickname"]
            },
            success: function(res) {
              var id = res.id;
			  scope : 'profile_nickname, account_email';
			  alert('로그인성공');
            	
			
			  var param = {
				  user_name : res.kakao_account.profile.nickname,
				  login_id : res.kakao_account.email, 
				  u_nick : id
    			}
			  
			  
            	$.ajax({
            		url:'${cpath}/kakaoLogin.do',
            		type: 'post',
            		data: param,
            		success: function(da){
            			 location.href="${cpath}/kakaoLoginS.do";
            		}
            	})
            	            	
            	
            	
             /*  console.log(res);
			
              location.href="${cpath}/kakaoLogin.do?userName="+res.kakao_account.profile.nickname+"&email="+res.kakao_account.email+"&user_id="+id;   */
		              
        }
          })
          console.log(authObj);
          var token = authObj.access_token;
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
        
}) //


</script>
</body>
</html>