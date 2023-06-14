<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<% request.setCharacterEncoding("utf-8");%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta name="description" content="POS - Bootstrap Admin Template">
<meta name="keywords"
	content="admin, estimates, bootstrap, business, corporate, creative, invoice, html5, responsive, Projects">
<meta name="author" content="Dreamguys - Bootstrap Admin Template">
<meta name="robots" content="noindex, nofollow">
<title>출고 등록</title>

<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/assets/css/animate.css">

<link rel="stylesheet" href="resources/assets/plugins/select2/css/select2.min.css">

<link rel="stylesheet" href="resources/assets/css/dataTables.bootstrap4.min.css">

<link rel="stylesheet"
	href="resources/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="resources/assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="resources/assets/css/style.css">
</head>
<!-- Navigation-->
<jsp:include page="nav.jsp" flush="false" />
<body>
	<div id="global-loader">
		<div class="whirly-loader"></div>
	</div>
<!-- Contents -->
<div class="page-wrapper d-flex align-items-start justify-content-center">
		<div class="content">
			<div class="row">
				<div class=""> <!-- col-lg-8 col-sm-12 -->
					<div class="col-lg-12 card shadow rounded-4 border-0"> <!-- col-lg-8  -->
						<div class="card-body">
						<form action="releasedItem" method="post">
							<div class="page-header">
								<div class="page-title">
									<h4 class="fs-3">출고 등록</h4>
								</div>
							</div>
								<div class="col-lg-12 col-sm-6 col-12">
									<div class="form-group">
										<label>출고 부서</label> <input name="Department" type="text" class="inputStyle">
									</div>
								</div>
								<br>
								<div class="col-lg-12 col-sm-6 col-12">
									<div class="form-group">
										<label>물품명</label> <input name="name" type="text" class="inputStyle">
									</div>
								</div>
								<br>
								<div class="col-lg-12 col-sm-6 col-12">
									<div class="form-group">
										<label>규격</label> <input name="specifications" type="text" class="inputStyle">
									</div>
								</div>
								<br>
								<div class="col-lg-12 col-sm-6 col-12">
									<div class="form-group">
										<label>수량</label> <input name="quantity" type="text" class="inputStyle">
									</div>
								</div>
								<br>
								<div class="col-lg-12 col-sm-6 col-12">
									<div class="form-group">
										<label>비고</label> <input name="memo" type="text" class="inputStyle">
									</div>
								</div>
								<br>
								<div class="col-lg-12 text-center">
								<button type="submit" class="btn btn-submit fs-5 fw-bolder d-inline-block col-12">출고하기</button>
							</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="resources/assets/js/jquery-3.6.0.min.js"></script>

	<script src="resources/assets/js/feather.min.js"></script>

	<script src="resources/assets/js/jquery.slimscroll.min.js"></script>

	<script src="resources/assets/js/jquery.dataTables.min.js"></script>
	<script src="resources/assets/js/dataTables.bootstrap4.min.js"></script>

	<script src="resources/assets/js/bootstrap.bundle.min.js"></script>

	<script src="resources/assets/plugins/select2/js/select2.min.js"></script>

	<script src="resources/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	<script src="resources/assets/plugins/sweetalert/sweetalerts.min.js"></script>

	<script src="resources/assets/js/script.js"></script>
</body>
</html>