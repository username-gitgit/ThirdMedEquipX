<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>물품 상세 정보</title>
</head>
<!-- Navigation-->
<jsp:include page="nav.jsp" />
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
									<h4 class="Sans fs-3">물품 상세 정보</h4>
									<!-- <h6>Full details of a product</h6> -->
								</div>
							</div>
							<!-- <form action="updateVisible" method="post"> -->
							<form action="/itemDetails/${itemDetails.name}/toggleVisible"
								method="post">
								<div class="bar-code-view">
									<img src="../resources/assets/img/barcode1.png" alt="barcode">
									<!-- <a
										class="printimg"> <img src=".resources/assets/img/icons/printer.svg"
										alt="print">
									</a> -->
								</div>
								<div class="productdetails">
									<ul class="product-bar">
										<li>
											<h4 class="fw-bold">물품명</h4>
											<h6>${itemDetails.name}</h6>
										</li>
										<li>
											<h4 class="fw-bold">분류</h4>
											<h6>${itemDetails.category}</h6>
										</li>
										<li>
											<h4 class="fw-bold">규격</h4>
											<h6>${itemDetails.specifications}</h6>
										</li>
										<li>
											<h4 class="fw-bold">마지막 변경일</h4>
											<h6>${itemDetails.change_date}</h6>
										</li>
										<li>
											<h4 class="fw-bold">수정한 관리자</h4>
											<h6>${itemDetails.in_charge}</h6>
										</li>
										<li>
											<h4 class="fw-bold">현재고</h4>
											<h6>${itemDetails.stock}</h6>
										</li>
									</ul>
									<br>
									<div class="col-lg-12 text-center Sans">
										<button type="button" id="toggleButton"
											onclick="toggleVisible('${itemDetails.name}')"
											class="btn btn-submit fs-6 fw-bolder d-inline-block Sans">
											사용 중지</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-12">
					<div class="card shadow rounded-4 border-0">
						<div class="card-body">

							<div class="page-header">
								<div class="page-title">
									<h4 class="Sans fs-3">물품 이미지</h4>
									<!-- <h6>Full details of a product</h6> -->
								</div>
							</div>

							<div class="slider-product-details">
								<div class="owl-carousel owl-theme">
									<!-- icon: product-slide -->
									<div class="slider-product">
										<img src="../${callImage.atcVo[0].uploadpath}" alt="img">
										<h4>물품명: ${itemDetails.name}</h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!-- <script src="resources/assets/js/jquery-3.6.0.min.js"></script> -->

	<script src="../resources/assets/js/feather.min.js"></script>

	<script src="../resources/assets/js/jquery.slimscroll.min.js"></script>

	<script src="../resources/assets/js/bootstrap.bundle.min.js"></script>

	<script
		src="../resources/assets/plugins/owlcarousel/owl.carousel.min.js"></script>

	<script src="../resources/assets/plugins/select2/js/select2.min.js"></script>

	<script src="../resources/assets/js/script.js"></script>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script src="../resources/js/toggleVisible.js"></script>
</body>
</html>