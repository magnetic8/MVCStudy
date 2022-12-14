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
<title>FOR THE URTH</title>
<!-- CSS files -->
<link href="${cpath}/css/tabler.css" rel="stylesheet" />
<link href="${cpath}/css/tabler-vendors.css" rel="stylesheet" />

<!-- Libs JS -->

<!-- Tabler Core -->
<script src="${cpath}/js/tabler.min.js" defer></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2224da2e91e9de7689142f9c3f2f1635&libraries=services"></script>

<!-- my -->


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

<link rel="stylesheet" href="${cpath}/css/my/sub.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"
	viewport-fit=cover">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
var map;
var infowindow
var dic = {};

$(document).ready(()=>{
	  loadMarker();
	  PageList(1);
});

//?????? ????????????
function loadMarker(){
	  
	  
	  $.ajax({
		  url: "${cpath}/maplist.do",
		  type : "get",
		  dataType : "json",
		  success : function(data){
			  totalData = data.length;
			  // ????????? ???????????? ???????????? ????????? ??????????????? ?????????
			  infowindow = new kakao.maps.InfoWindow({zIndex:1});

			  var mapContainer = document.getElementById('map'), // ????????? ????????? div 
			      mapOption = {
			          center: new kakao.maps.LatLng(37.566826, 126.9786567), // ????????? ????????????
			          level: 3 // ????????? ?????? ??????
			      };  

			  // ????????? ???????????????    
			  map = new kakao.maps.Map(mapContainer, mapOption); 

			  // ?????? ?????? ????????? ???????????????
			  var ps = new kakao.maps.services.Places(); 

			  $.each(data,function(index, item){
				  dic[item.store_name]=item.store_addr;
				  
				  // ???????????? ????????? ???????????????
				  ps.keywordSearch(item.store_name, placesSearchCB); 

				  // ????????? ?????? ?????? ??? ???????????? ???????????? ?????????
				  function placesSearchCB (data, status, pagination) {
				      if (status === kakao.maps.services.Status.OK) {

				          // ????????? ?????? ????????? ???????????? ?????? ????????? ?????????????????????
				          // LatLngBounds ????????? ????????? ???????????????
				          var bounds = new kakao.maps.LatLngBounds();

				          for (var i=0; i<data.length; i++) {
				              displayMarker(data[i]);    
				              bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
				          }       
				      } 
				  }

				  // ????????? ????????? ???????????? ???????????????
				  function displayMarker(place) {
				      
				      // ????????? ???????????? ????????? ???????????????
				      var marker = new kakao.maps.Marker({
				          map: map,
				          position: new kakao.maps.LatLng(place.y, place.x) 
				      });
				      
				      mouseOverMarker(marker, place.place_name);
				      
				  }
				  
			  })
			  },
			  error : function(){
				  alert("error");
			  }
		});
	  

}//__??????????????????


//?????? ?????????????????????
function PageList(num){
	
	$.ajax({
		  url: "${cpath}/pagelist.do?page="+num,
		  type : "get",
		  dataType : "json",
		  success : function(data){
			  var html ="<table>";
			  $.each(data, function(index, item){
					 html+="<tr>";
					 html+="<td id='"+item.store_num+"'><a href='javascript:goView("+item.store_num+")'>"+item.store_name+"</a></td>";
					 html+="<td >"+item.store_addr+"</td>"
					 if(item.homepage === "??????"){
						 html+="<td>"+item.homepage+"</td>"
					 }
					 else{
						 html+="<td ><a href='"+item.homepage+"'>"+item.homepage+"</a></td>"
					 }
					
					 html+= "</tr>";
			  })
			  html+="</table>";
			  $("#list").html(html)  
			  },
			  error : function(){
				  alert("error");
			  }
		});
	
	$.ajax({
		  url: "${cpath}/paging.do?page="+num,
		  type : "get",
		  dataType : "json",
		  success : function(data){
			  $.each(data, function(index, item){
				  var page = "";
				  if(item.start_page==1){
					  page += '<li class="page-item disabled">';
					  page += '<a class="page-link" href="javascript:PageList('+(item.start_page-1)+')" tabindex="-1" aria-disabled="false">';
						page += '<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">';
						page += '<path stroke="none" d="M0 0h24v24H0z" fill="none"/>';
						page += '<polyline points="15 6 9 12 15 18" /></svg> prev</a></li>';
				  }
				  else{
					  page += '<li class="page-item">';
					  page += '<a class="page-link" href="javascript:PageList('+(item.start_page-1)+')" tabindex="-1" aria-disabled="false">';
						page += '<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">';
						page += '<path stroke="none" d="M0 0h24v24H0z" fill="none"/>';
						page += '<polyline points="15 6 9 12 15 18" /></svg> prev</a></li>';
				  }
					
					
					
					for(var i=(item.start_page); i<=(item.end_page); i++){
						if(item.current_page==i){
							page += '<li class="page-item active"><a class="page-link">'+i+'</a></li>';
						}else{
							page += '<li class="page-item"><a class="page-link" href="javascript:PageList('+i+')">'+i+'</a></li>';
						}
					}

					console.log()
					if((item.end_page)%5 == 0){
						page += '<li class="page-item"><a class="page-link" href="javascript:PageList('+(item.end_page+1)+')">next';
						page += '<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">';
						page += '<path stroke="none" d="M0 0h24v24H0z" fill="none" />';
						page += '<polyline points="9 6 15 12 9 18" />';
						page += '</svg></a></li>';
					}else{
						page += '<li class="page-item disabled" ><a class="page-link" href="javascript:PageList('+(item.end_page+1)+')">next';
						page += '<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">';
						page += '<path stroke="none" d="M0 0h24v24H0z" fill="none" />';
						page += '<polyline points="9 6 15 12 9 18" />';
						page += '</svg></a></li>';
					}
					
					
					$("#paging").html(page);
			  })
				
		  },
		  error : function(){
			  alert("error");
		  }
		  })
}
//__?????? ?????????????????????


//?????? ?????? ??????
function searchStore(num){
	
	var searchOption = document.getElementById('select-tags');
	var option = searchOption.options[searchOption.selectedIndex].text;
	var searchtext = document.getElementById('search').value;
	
	$.ajax({
		  url: "${cpath}/mapsearch.do?option="+option+"&search="+searchtext+"&page="+num,
		  type : "get",
		  dataType : "json",
		  success : function(data){
			  var html ="<table>";
			  $.each(data, function(index, item){
					 html+="<tr>";
					 html+="<td id='"+item.store_num+"'><a href='javascript:goView("+item.store_num+")'>"+item.store_name+"</a></td>";
					 html+="<td >"+item.store_addr+"</td>"
					 html+="<td >"+item.homepage+"</td>"
					 html+= "</tr>";
			  })
			  html+="</table>";
			  $("#list").html(html)  
			  },
			  error : function(){
				  alert("error");
			  }
		});
	$.ajax({
		  url: "${cpath}/searchpaging.do?search="+searchtext+"&page="+num,
		  type : "get",
		  dataType : "json",
		  success : function(data){
			  $.each(data, function(index, item){
				  var page = "";
				  if(item.start_page==1){
					  page += '<li class="page-item disabled">';
					  page += '<a class="page-link" href="javascript:searchStore('+(item.start_page-1)+')" tabindex="-1" aria-disabled="false">';
						page += '<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">';
						page += '<path stroke="none" d="M0 0h24v24H0z" fill="none"/>';
						page += '<polyline points="15 6 9 12 15 18" /></svg> prev</a></li>';
				  }
				  else{
					  page += '<li class="page-item">';
					  page += '<a class="page-link" href="javascript:searchStore('+(item.start_page-1)+')" tabindex="-1" aria-disabled="false">';
						page += '<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">';
						page += '<path stroke="none" d="M0 0h24v24H0z" fill="none"/>';
						page += '<polyline points="15 6 9 12 15 18" /></svg> prev</a></li>';
				  }

					for(var i=(item.start_page); i<=(item.end_page); i++){
						if(item.current_page==i){
							page += '<li class="page-item active"><a class="page-link">'+i+'</a></li>';
						}else{
							page += '<li class="page-item"><a class="page-link" href="javascript:searchStore('+i+')">'+i+'</a></li>';
						}
					}

					if((item.end_page)%5 == 0){
						page += '<li class="page-item"><a class="page-link" href="javascript:searchStore('+(item.end_page+1)+')">next';
						page += '<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">';
						page += '<path stroke="none" d="M0 0h24v24H0z" fill="none" />';
						page += '<polyline points="9 6 15 12 9 18" />';
						page += '</svg></a></li>';
					}else{
						page += '<li class="page-item disabled" ><a class="page-link" href="javascript:searchStore('+(item.end_page+1)+')">next';
						page += '<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">';
						page += '<path stroke="none" d="M0 0h24v24H0z" fill="none" />';
						page += '<polyline points="9 6 15 12 9 18" />';
						page += '</svg></a></li>';
					}
					
					
					$("#paging").html(page);
			  })
				
		  },
		  error : function(){
			  alert("error");
		  }
		  })
}


//?????? ?????????
function goView(num){

	// ??????-?????? ?????? ????????? ???????????????
	var geocoder = new kakao.maps.services.Geocoder();

	// ????????? ????????? ???????????????
	geocoder.addressSearch(dic[$('#'+num).text()], function(result, status) {

	    // ??????????????? ????????? ??????????????? 
	     if (status === kakao.maps.services.Status.OK) {

	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	        // ??????????????? ?????? ????????? ????????? ???????????????
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	        marker.setVisible(false);

	        // ????????? ????????? ??????????????? ?????? ????????? ??????????????????
	        map.setCenter(coords);
	        
	        
	        iwContent = '<div style="padding:5px;">'+$('#'+num).text()+'</div>', // ?????????????????? ????????? ???????????? HTML ??????????????? document element??? ???????????????
	        iwPosition = new kakao.maps.LatLng(result[0].y, result[0].x), //??????????????? ?????? ???????????????

	        
	     	// ?????????????????? ???????????? ????????? ???????????????
	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + $('#'+num).text() + '</div>');
	        infowindow.open(map, marker);
	    } 
	    
	     
	 });

}

//?????? ??????????????? ?????????
function mouseOverMarker(marker, title) {
    kakao.maps.event.addListener(marker, 'mouseover', function() {
        displayInfowindow(marker, title);
    });

    kakao.maps.event.addListener(marker, 'mouseout', function() {
        infowindow.close();
    });
}

//???????????????
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}



</script>
</head>
<body>

	<div class="page">
		<div class="page-main">
			<jsp:include page="../../header/header.jsp" />
			<!-- ????????? -->
			<!------------???????????? ??????----------->
			<div class="page-wrapper">
				<div class="page-body">
					<div class="container-xl">
						<div class="row row-cards">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-body">
										<div class="ratio ratio-16x9">
											<div>
												<div id="map" style="width: 100%; height: 100%;"></div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-12 mt-5 mb-5">
								<div class="bg-light border-y">
									<div class="table-responsive">
										<table class="table table-vcenter table-hover">
											<thead>
												<tr>
													<th>?????????</th>
													<th>??????</th>
													<th>????????????</th>
												</tr>
											</thead>
											<!-- ?????? ????????? -->
											<tbody id="list">
												<tr>
													<td><a href="#" class="text-reset "></a></td>
													<td class="text-muted  text-center">123</td>
												</tr>
											</tbody>
											<!-- ?????? ????????? ??? -->
										</table>
									</div>
									<!-- ????????? ????????? -->
									<div class="card-footer d-flex align-items-center py-2">
										<ul class="pagination m-0 m-auto" id="paging">

										</ul>
									</div>
									<!-- ????????? ????????? ??? -->
									<form>
										<div class="card-footer">
											<div class="row m-auto mb-3">
												<div class="col-3"></div>
												<div class="col-auto">
													<select type="text" class="form-select"
														placeholder="Select a date" id="select-tags" value="">
														<option value="total">?????????</option>
														<option value="vegan">??????</option>
													</select>
												</div>
												<div class="col-4">
													<div class="input-group">
														<input type="text" class="form-control"
															aria-label="Text input with dropdown button" id="search">
													</div>
												</div>
												<div class="col-1">
													<button type="button" class="btn btn-icon"
														onclick="searchStore(1)">
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

				<jsp:include page="../../footer/footer.jsp" />
			</div>
		</div>
</body>
</html>