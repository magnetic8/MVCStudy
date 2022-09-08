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
				<div class="row">
					<div class="col-md-6">
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Basic form</h3>
                </div>
                <div class="card-body">
                  <form>
                    <div class="form-group mb-3 ">
                      <label class="form-label required">Email address</label>
                      <div >
                        <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email">
                        <small class="form-hint">We'll never share your email with anyone else.</small>
                      </div>
                    </div>
                    <div class="form-group mb-3 ">
                      <label class="form-label required">Password</label>
                      <div >
                        <input type="password" class="form-control" placeholder="Password">
                        <small class="form-hint">
                          Your password must be 8-20 characters long, contain letters and numbers, and must not contain
                          spaces, special characters, or emoji.
                        </small>
                      </div>
                    </div>
                    <div class="form-group mb-3 ">
                      <label class="form-label">Select</label>
                      <div >
                        <select class="form-select">
                          <option>Option 1</option>
                          <optgroup label="Optgroup 1">
                            <option>Option 1</option>
                            <option>Option 2</option>
                          </optgroup>
                          <option>Option 2</option>
                          <optgroup label="Optgroup 2">
                            <option>Option 1</option>
                            <option>Option 2</option>
                          </optgroup>
                          <optgroup label="Optgroup 3">
                            <option>Option 1</option>
                            <option>Option 2</option>
                          </optgroup>
                          <option>Option 3</option>
                          <option>Option 4</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group mb-3">
                      <label class="form-label">Checkboxes</label>
                      <div >
                        <label class="form-check">
                          <input class="form-check-input" type="checkbox" checked="">
                          <span class="form-check-label">Option 1</span>
                        </label>
                        <label class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <span class="form-check-label">Option 2</span>
                        </label>
                        <label class="form-check">
                          <input class="form-check-input" type="checkbox" disabled="">
                          <span class="form-check-label">Option 3</span>
                        </label>
                      </div>
                    </div>
                    <div class="form-footer">
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>f
				</div>
			</div>
			<!-- footer -->
			<!-- WEB-INF폴더에서 사용시 page="../footer/footer.jsp"로 변경 -->
			<jsp:include page="./footer/footer.jsp" />
		</div>
	</div>
</body>
</html>