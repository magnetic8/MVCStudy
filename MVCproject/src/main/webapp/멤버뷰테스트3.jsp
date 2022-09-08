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
<link rel="stylesheet" href="${cpath}/css/my/sub.css">
<link rel="stylesheet" href="${cpath}/css/my/image.css">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	viewport-fit=cover" >
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>


</head>
<body>
	<div class="page">
		<div class="page-main">
		<!-- WEB-INF폴더에서 사용시 page="../header/header.jsp"로 변경 -->
			<jsp:include page="./header/header.jsp" />
			<!-- 여기까지 header -->
			 <!------------여기부터 입력----------->
      <div class="container">
        <br>
        
        <h2>목록(List)</h2>
        <hr>

        <div class="row g-2">
        

          <div class="col-6 col-sm-4">
            <div class="card">
              <div class="card-img-top img-responsive img-responsive-21x9" style="background-image: url(https://post-phinf.pstatic.net/MjAyMDA5MTRfMTMy/MDAxNjAwMDU2MjAxNDIx.SsHtg-KKOqsDCgHgzTk-nGYDF7QisuWkWTP3LTYSsNsg.GTV2b4KRZvBQ2aQtTNMQpIPqIxv17TnpF0QIFdrTj8Ug.JPEG/Korea_Danyang_Dodamsambong_Peaks.jpg?type=w1200)"></div>
              <div class="card-body">
                <a href="${cpath}/boardView.do?img_seq=${vo.img_seq}"><h3 class="card-title">함께하는 제로웨이스트</h3></a>
                
                <p class="text-muted">환경을 지키는 첫 번째 발걸음. 제로웨이스트 빠밤 환경을 지키는 첫 번째 발걸음. 제로웨이스트 빠밤 환경을 지키는 첫 번째 발걸음. 제로웨이스트 빠밤</p>
                <hr class="mb-3 mt-2">
                <div class="d-flex align-items-center">
    
                        <div>
                          <div class="fs10">마늘</div>
                          <div class="text-muted fs10">2022.08.31</div>
                        </div>
                        <div class="ms-auto">
                          <a href="#" class="text-muted">
                            <!-- Download SVG icon from http://tabler-icons.io/i/eye -->
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="2"></circle><path d="M22 12c-2.667 4.667 -6 7 -10 7s-7.333 -2.333 -10 -7c2.667 -4.667 6 -7 10 -7s7.333 2.333 10 7"></path></svg>
                            335
                          </a>
                          <a href="#" class="ms-3 text-muted">
                            <!-- Download SVG icon from http://tabler-icons.io/i/heart -->
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M19.5 12.572l-7.5 7.428l-7.5 -7.428m0 0a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572"></path></svg>
                            80
                          </a>
                        </div>
                      </div>
              </div>
            </div>
          </div>


         
          

        </div>
       
        
	
      <div class="row row-cards mt-3">
        <div class="col">
          <div class="card">
            <div class="card-footer d-flex align-items-center py-2">
              <ul class="pagination m-0 m-auto">
                <c:if test="${board.pagingPerCount<board.start_page}">
                  <li class="page-item abled">
                    <a class="page-link" href="${cpath }/callist.do?p=${board.start_page-1}" tabindex="-1" aria-abled="true">
                      <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
                        stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        page += <polyline points="15 6 9 12 15 18" /></svg>prev</a></li>
				</c:if>
				    <c:forEach var="i" begin="${board.start_page}" end="${board.end_page}">
				    	<c:choose>
				    	<c:when test="${board.currentPage eq i}">
				    	<li class="page-item active"><a class="page-link" href="${cpath }/callist.do?p=${i}">${i}</a></li>
				    	</c:when>
				    	<c:otherwise>
				    	
					    <li class="page-item "><a class="page-link" href="${cpath }/callist.do?p=${i}">${i}</a></li>
					    </c:otherwise>
					    </c:choose>
				    </c:forEach>
				     
				   
                      <!-- Download SVG icon from http://tabler-icons.io/i/chevron-left -->
                      
				<c:if test="${board.numPageCount>board.end_page}">
					<li class="page-item abled"><a class="page-link" href="${cpath }/callist.do?p=${board.end_page+1}" tabindex="1" aria-abled="true">next
					<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" 
                      stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" 
                      stroke-linejoin="round">
                      <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                      page += <polyline points="9 6 15 12 9 18" /></svg></a></li>
                 </c:if> 
                      
                   
                      
                      </ul>
              <a href="#" class="btn btn-blue me-3">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-pencil-plus" width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                  <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                  <path d="M8 20l10.5 -10.5a2.828 2.828 0 1 0 -4 -4l-10.5 10.5v4h4z"></path>
                  <path d="M13.5 6.5l4 4"></path>
                  <path d="M16 18h4m-2 -2v4"></path>
                </svg>
                글쓰기</a>
            </div>
            <form action="#" method="#">
              <div class="card-footer">
                <div class="row m-auto mb-3">

                  <div class="col-3"></div>
                  <div class="col-auto">
                    <select type="text" class="form-select" placeholder="Select a date" id="select-tags" value="">
                      <option value="title">제목</option>
                      <option value="writer">작성자</option>
                      <option value="content">내용</option>
                    </select>
                  </div>
                  <div class="col-4">
                    <div class="input-group">
                      <input type="text" class="form-control" aria-label="Text input with dropdown button">
                    </div>
                  </div>
                  <div class="col-1">
                    <button type="submit" class="btn btn-icon" value="Submit"><svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-search" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                        <circle cx="10" cy="10" r="7"></circle>
                        <line x1="21" y1="21" x2="15" y2="15"></line>
                      </svg></button>

                    
                  </div>
                </div>
              </div>
            </form>
      </div>
      
      </div>
      </div>
      </div>
      <!------------ㄲㅡㅌ----------->

				</div>
			</div>
			<!-- footer -->
			<!-- WEB-INF폴더에서 사용시 page="../footer/footer.jsp"로 변경 -->
			<jsp:include page="./footer/footer.jsp" />
		</div>
	</div>
</body>
</html>