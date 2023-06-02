<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
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
<title>전체 물품 리스트</title>

<link rel="shortcut icon" type="image/x-icon"
	href="resources/assets/img/favicon.png">

<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/assets/css/animate.css">

<link rel="stylesheet" href="resources/assets/plugins/select2/css/select2.min.css">

<link rel="stylesheet" href="resources/assets/css/dataTables.bootstrap4.min.css">

<link rel="stylesheet"
	href="resources/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="resources/assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="resources/assets/css/style.css">
</head>
<body>
	<div id="global-loader">
		<div class="whirly-loader"></div>
	</div>

	<div class="main-wrapper">

		<div class="header">

			<div class="header-left active">
				<a href="index.html" class="logo"> <img
					src="resources/assets/img/logo.png" alt="">
				</a> <a href="index.html" class="logo-small"> <img
					src="resources/assets/img/logo-small.png" alt="">
				</a> <a id="toggle_btn" href="javascript:void(0);"> </a>
			</div>

			<a id="mobile_btn" class="mobile_btn" href="#sidebar"> <span
				class="bar-icon"> <span></span> <span></span> <span></span>
			</span>
			</a>

			<ul class="nav user-menu">
				<li class="nav-item dropdown has-arrow main-drop"><a
					href="javascript:void(0);" class="dropdown-toggle nav-link userset"
					data-bs-toggle="dropdown"> <span class="user-img"><img
							src="resources/assets/img/profiles/kuromi.jpg" alt=""> <span
							class="status online"></span></span>
				</a>
					<div class="dropdown-menu menu-drop-user">
						<div class="profilename">
							<div class="profileset">
								<span class="user-img"><img
									src="resources/assets/img/profiles/kuromi.jpg" alt=""> <span
									class="status online"></span></span>
								<div class="profilesets">
									<h6>쿠로미</h6>
									<h5>Admin</h5>
								</div>
							</div>
							<hr class="m-0">
							<hr class="m-0">
							<a class="dropdown-item logout pb-0" href="signin.html"><img
								src="resources/assets/img/icons/log-out.svg" class="me-2" alt="img">로그아웃</a>
						</div>
					</div></li>
			</ul>

			<div class="dropdown mobile-user-menu">
				<a href="javascript:void(0);" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fa fa-ellipsis-v"></i></a>
				<div class="dropdown-menu dropdown-menu-right">
					<a class="dropdown-item" href="signin.html">로그아웃</a>
				</div>
			</div>
		</div>

		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li><a href="index.html"><img
								src="resources/assets/img/icons/dashboard.svg" alt="img"><span>
									전체 물품 리스트</span> </a></li>
						<li><a href="index.html"><img
								src="resources/assets/img/icons/quotation1.svg" alt="img"><span>
									입고 등록</span> </a></li>
						<li><a href="index.html"><img
								src="resources/assets/img/icons/transfer1.svg" alt="img"><span>
									출고 내역</span> </a></li>
						<li><a href="index.html"><img
								src="resources/assets/img/icons/purchase1.svg" alt="img"><span>
									신규 제품 등록</span> </a></li>
						<li class="submenu"><a href="javascript:void(0);"><i
								data-feather="alert-octagon"></i> <span> 재고 부족 </span> </a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="page-wrapper">
			<div class="content">
				<div class="page-header">
					<div class="page-title">
						<h4>전체 물품 리스트</h4>
					</div>
				</div>

				<div class="card">
					<div class="card-body">
						<div class="table-top">
							<div class="search-set">
								<div class="search-path">
									<a class="btn btn-filter" id="filter_search"> <img
										src="resources/assets/img/icons/filter.svg" alt="img"> <span><img
											src="resources/assets/img/icons/closes.svg" alt="img"></span>
									</a>
								</div>
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
														src="resources/assets/img/icons/search-whites.svg" alt="img"></a>
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
										<th>제조사</th>
										<th>분류</th>
										<th>변경일</th>
										<th>작성자</th>
										<th>현재고</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${listCall}" var="listCall">
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product1.jpg" alt="product">
										</a> <a href="javascript:void(0);">${listCall.name}</a></td>
										<td>${listCall.specifications}</td>
										<td>${listCall.manufacturer}</td>
										<td>${listCall.category}</td>
										<td>${listCall.change_date}</td>
										<td>${listCall.in_charge}</td>
										<td>${listCall.stock}</td>
									</tr>
								</c:forEach>
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product2.jpg" alt="product">
										</a> <a href="javascript:void(0);">Orange</a></td>
										<td>PT002</td>
										<td>N/D</td>
										<td>Fruits</td>
										<td>2023.06.01 16:11</td>
										<!-- <td>pc</td> -->
										<td>Admin</td>
										<td>100.00</td>
									</tr>
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product3.jpg" alt="product">
										</a> <a href="javascript:void(0);">Pineapple</a></td>
										<td>PT003</td>
										<td>N/D</td>
										<td>Fruits</td>
										<td>2023.06.01 16:11</td>
										<!-- <td>pc</td> -->
										<td>Admin</td>
										<td>100.00</td>
									</tr>
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product4.jpg" alt="product">
										</a> <a href="javascript:void(0);">Strawberry</a></td>
										<td>PT004</td>
										<td>N/D</td>
										<td>Fruits</td>
										<td>2023.06.01 16:11</td>
										<!-- <td>pc</td> -->
										<td>Admin</td>
										<td>100.00</td>
									</tr>
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product5.jpg" alt="product">
										</a> <a href="javascript:void(0);">Avocat</a></td>
										<td>PT005</td>
										<td>N/D</td>
										<td>Accessories</td>
										<td>2023.06.01 16:11</td>
										<!-- <td>pc</td> -->
										<td>Admin</td>
										<td>150.00</td>
									</tr>
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product6.jpg" alt="product">
										</a> <a href="javascript:void(0);">Macbook Pro</a></td>
										<td>PT006</td>
										<td>N/D</td>
										<td>Shoes</td>
										<td>2023.06.01 16:11</td>
										<!-- <td>pc</td> -->
										<td>Admin</td>
										<td>100.00</td>
									</tr>
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product7.jpg" alt="product">
										</a> <a href="javascript:void(0);">Apple Earpods</a></td>
										<td>PT007</td>
										<td>N/D</td>
										<td>Shoes</td>
										<td>2023.06.01 16:11</td>
										<!-- <td>pc</td> -->
										<td>Admin</td>
										<td>100.00</td>
									</tr>
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product8.jpg" alt="product">
										</a> <a href="javascript:void(0);">iPhone 11 </a></td>
										<td>PT008</td>
										<td>N/D</td>
										<td>Fruits</td>
										<td>2023.06.01 16:11</td>
										<!-- <td>pc</td> -->
										<td>Admin</td>
										<td>100.00</td>
									</tr>
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product9.jpg" alt="product">
										</a> <a href="javascript:void(0);">samsung </a></td>
										<td>PT009</td>
										<td>N/D</td>
										<td>Earphones</td>
										<td>2023.06.01 16:11</td>
										<!-- <td>pc</td> -->
										<td>Admin</td>
										<td>100.00</td>
									</tr>
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product11.jpg" alt="product">
										</a> <a href="javascript:void(0);">Banana</a></td>
										<td>PT0010</td>
										<td>N/D</td>
										<td>Health Care</td>
										<td>2023.06.01 16:11</td>
										<!-- <td>kg</td> -->
										<td>Admin</td>
										<td>100.00</td>
									</tr>
									<tr>
										<td class="productimgname"><a href="javascript:void(0);"
											class="product-img"> <img
												src="resources/assets/img/product/product17.jpg" alt="product">
										</a> <a href="javascript:void(0);">Limon</a></td>
										<td>PT0011</td>
										<td>N/D</td>
										<td>Health Care</td>
										<td>2023.06.01 16:11</td>
										<!-- <td>kg</td> -->
										<td>Admin</td>
										<td>100.00</td>
									</tr>
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

	<script src="resources/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	<script src="resources/assets/plugins/sweetalert/sweetalerts.min.js"></script>

	<script src="resources/assets/js/script.js"></script>
</body>
</html>