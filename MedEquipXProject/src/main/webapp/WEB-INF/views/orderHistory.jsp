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
<title>출고 내역</title>

<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="resources/images/hospital.png" />

<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/assets/css/animate.css">

<link rel="stylesheet"
	href="resources/assets/plugins/select2/css/select2.min.css">

<link rel="stylesheet"
	href="resources/assets/css/dataTables.bootstrap4.min.css">

<link rel="stylesheet"
	href="resources/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="resources/assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="resources/assets/css/style.css">
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
			<div class="page-header">
				<div class="page-title">
					<h4>출고 내역</h4>
				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<div class="table-top">
						<div class="search-set">
<!-- 							<div class="search-path">
								<a class="btn btn-filter" id="filter_search"> <img
									src="resources/assets/img/icons/filter.svg" alt="img"> <span><img
										src="resources/assets/img/icons/closes.svg" alt="img"></span>
								</a>
							</div> -->
							<div class="search-input">
								<a class="btn btn-searchset"><img
									src="resources/assets/img/icons/search-white.svg" alt="img"></a>
							</div>
						</div>
					</div>
					<div class="card mb-0" id="filter_inputs">
						<div class="card-body pb-0">
							<div class="row">
								<div class="col-lg-12 col-sm-12">
									<div class="row">
										<div class="col-lg col-sm-6 col-12">
											<div class="form-group">
												<select class="select">
													<option>분류를 선택하세요.</option>
													<option>Computers</option>
													<option>Fruits</option>
												</select>
											</div>
										</div>
										<div class="col-lg-1 col-sm-6 col-12">
											<div class="form-group">
												<a class="btn btn-filters ms-auto"><img
													src="resources/assets/img/icons/search-whites.svg"
													alt="img"></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="table-responsive">
						<table class="table  datanew">
							<thead>
								<tr>
									<th>상품명</th>
									<th>규격</th>
									<th>사용처</th>
									<th>출고 수량</th>
									<th>출고 시간</th>
									<th>승인한 관리자</th>
									<th>비고</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${historyCall}" var="historyCall">
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <!-- <img
												src="resources/assets/img/product/product1.jpg"
												alt="product"> -->
										</a> <a href="javascript:void(0);">${historyCall.name}</a></td>
										<td>${historyCall.specifications}</td>
										<td>${historyCall.department}</td>
										<td>${historyCall.quantity}</td>
										<td>${historyCall.change_date}</td>
										<td>${historyCall.in_charge}</td>
										<td>${historyCall.memo}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
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

	<script
		src="resources/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	<script src="resources/assets/plugins/sweetalert/sweetalerts.min.js"></script>

	<script src="resources/assets/js/script.js"></script>
</body>
</html>