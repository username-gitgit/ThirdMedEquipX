<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%
	request.setCharacterEncoding("utf-8");
%>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta name="description" content="POS - Bootstrap Admin Template">
<meta name="keywords"
	content="admin, estimates, bootstrap, business, corporate, creative, invoice, html5, responsive, Projects">
<meta name="author" content="Dreamguys - Bootstrap Admin Template">
<meta name="robots" content="noindex, nofollow">
<title>신규 물품 등록</title>

<!-- Favicon-->
<!-- <link rel="icon" type="image/x-icon"
	href="resources/images/hospital.png" />

<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/assets/css/animate.css">

<link rel="stylesheet" href="resources/assets/plugins/select2/css/select2.min.css">

<link rel="stylesheet" href="resources/assets/css/dataTables.bootstrap4.min.css">

<link rel="stylesheet"
	href="resources/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="resources/assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="resources/assets/css/style.css"> -->
<style>
.inputStyle{
background-color: #fafafa !important;
box-shadow: inset 0 1px 3px 0 rgba(0,0,0,.08);
}
</style>
</head>
<!-- Navigation-->
<jsp:include page="nav.jsp" flush="false" />
<body>
	<div id="global-loader">
		<div class="whirly-loader"></div>
	</div>
<!-- Contents -->	
		<div
			class="page-wrapper d-flex align-items-start justify-content-center">
			<div class="content">

				<div class="row justify-content-center">
					<div class="col-lg-6 card shadow rounded-4 border-0">
						<div class="card-body">
							<div class="row">
								<div class="page-header">
									<div class="page-title text-center">
										<h3 class="fs-3">신규 물품 등록</h3>
										<!-- <h6>Create new product</h6> -->
									</div>
								</div>
								<div class="col-lg-12 col-sm-6 col-12">
									<div class="form-group">
										<label>물품명</label> <input type="text" class="inputStyle">
									</div>
								</div>
								<br>
								<div class="col-lg-12 col-sm-6 col-12">
									<div class="form-group">
										<label>분류</label> <input type="text" class="inputStyle">
									</div>
								</div>
								<br>
								<div class="col-lg-12 col-sm-6 col-12">
									<div class="form-group">
										<label>규격</label> <input type="text" class="inputStyle">
									</div>
								</div>
								<br>
								<div class="col-lg-12 col-sm-6 col-12">
									<div class="form-group">
										<label>제조사</label> <input type="text" class="inputStyle">
									</div>
								</div>
								<br>
							</div>
							<div class="col-lg-12">
								<div class="form-group">
									<label> 제품 사진</label>
									<div class="image-upload">
										<input type="file">
										<div class="image-uploads">
											<img src="resources/assets/img/icons/upload.svg" alt="img">
											<h4>사진 등록하기</h4>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-12 text-center">
								<a href="javascript:void(0);" class="btn btn-submit fs-5 fw-bolder d-inline-block col-12">물품
									등록하기</a>
								<!-- <a href="productlist.html" class="btn btn-cancel">Cancel</a> -->
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