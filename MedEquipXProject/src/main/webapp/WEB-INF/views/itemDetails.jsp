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
<title>물품 상세 보기</title>

<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="resources/images/hospital.png" />
<!-- <link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.png"> -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/css/animate.css">

<link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

<link rel="stylesheet"
	href="assets/plugins/owlcarousel/owl.carousel.min.css">

<link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">

<link rel="stylesheet"
	href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="assets/css/style.css">

</head>
<!-- Navigation-->
<jsp:include page="nav.jsp" flush="false" />
<body>
	<div id="global-loader">
		<div class="whirly-loader"></div>
	</div>
	<!-- Contents -->
	<div class="page-wrapper">
		<div class="content">
			<div class="row">
				<div class="col-lg-8 col-sm-12">
					<div class="col-lg-8 card shadow rounded-4 border-0">
						<div class="card-body">

							<div class="page-header">
								<div class="page-title">
									<h4 class="fs-3">물품 상세 정보</h4>
									<!-- <h6>Full details of a product</h6> -->
								</div>
							</div>
							<div class="bar-code-view">
								<img src="resources/assets/img/barcode1.png" alt="barcode">
								<!-- <a
										class="printimg"> <img src="resources/assets/img/icons/printer.svg"
										alt="print">
									</a> -->
							</div>
							<div class="productdetails">
								<ul class="product-bar">
									<li>
										<h4 class="fw-bold">물품명</h4>
										<h6>${itemCall.name}</h6>
									</li>
									<li>
										<h4 class="fw-bold">분류</h4>
										<h6>${itemCall.category}</h6>
									</li>
									<li>
										<h4 class="fw-bold">규격</h4>
										<h6>${itemCall.specifications}</h6>
									</li>
									<li>
										<h4 class="fw-bold">마지막 변경일</h4>
										<h6>${itemCall.change_date}</h6>
									</li>
									<li>
										<h4 class="fw-bold">수정한 관리자</h4>
										<h6>${itemCall.in_charge}</h6>
									</li>
									<li>
										<h4 class="fw-bold">현재고</h4>
										<h6>${itemCall.stock}</h6>
									</li>
									<li>
										<h4 class="fw-bold">1개월 평균 회전</h4>
										<h6>${itemCall.turnover_rate}</h6>
									</li>
									<!-- <li>
											<h4 class="fw-bold">물품명</h4>
											<h6>Macbook pro</h6>
										</li>
										<li>
											<h4 class="fw-bold">분류</h4>
											<h6>Computers</h6>
										</li>
										<li>
											<h4 class="fw-bold">규격</h4>
											<h6>PT0001</h6>
										</li>
										<li>
											<h4 class="fw-bold">마지막 변경일</h4>
											<h6>2023-06-02 11:03</h6>
										</li>
										<li>
											<h4 class="fw-bold">수정한 관리자</h4>
											<h6>시나모롤</h6>
										</li>
										<li>
											<h4 class="fw-bold">현재고</h4>
											<h6>100</h6>
										</li>
										<li>
											<h4 class="fw-bold">1개월 평균 회전</h4>
											<h6>1.8</h6>
										</li> -->
								</ul>
								<br>
								<div class="col-lg-12 text-center">
									<a href="javascript:void(0);"
										class="btn btn-submit fs-6 fw-bolder d-inline-block "> 사용
										중지</a>
									<!-- <a href="productlist.html" class="btn btn-cancel">사용 중지</a> -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-12">
					<div class="card shadow rounded-4 border-0">
						<div class="card-body">

							<div class="page-header">
								<div class="page-title">
									<h4 class="fs-3">물품 상세 이미지</h4>
									<!-- <h6>Full details of a product</h6> -->
								</div>
							</div>

							<div class="slider-product-details">
								<div class="owl-carousel owl-theme product-slide">
									<div class="slider-product">
										<img src="resources/assets/img/product/product69.jpg"
											alt="img">
										<h4>macbookpro.jpg</h4>
										<h6>581kb</h6>
									</div>
									<!-- <div class="slider-product">
										<img src="resources/assets/img/product/product69.jpg"
											alt="img">
										<h4>macbookpro.jpg</h4>
										<h6>581kb</h6>
									</div> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<script src="assets/js/jquery-3.6.0.min.js"></script>

	<script src="assets/js/feather.min.js"></script>

	<script src="assets/js/jquery.slimscroll.min.js"></script>

	<script src="assets/js/bootstrap.bundle.min.js"></script>

	<script src="assets/plugins/owlcarousel/owl.carousel.min.js"></script>

	<script src="assets/plugins/select2/js/select2.min.js"></script>

	<script src="assets/js/script.js"></script>
</body>
</html>