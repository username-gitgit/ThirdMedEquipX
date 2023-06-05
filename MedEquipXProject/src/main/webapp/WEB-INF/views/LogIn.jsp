<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html lang="ko">
<head>
<% request.setCharacterEncoding("utf-8");%>
<meta charset="utf-8" />
<!-- <meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" /> -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta name="description" content="POS - Bootstrap Admin Template">
<meta name="keywords"
	content="admin, estimates, bootstrap, business, corporate, creative, invoice, html5, responsive, Projects">
<meta name="author" content="Dreamguys - Bootstrap Admin Template">
<meta name="robots" content="noindex, nofollow">

<title>관리자 로그인</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Custom Google font-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet" />
<!-- SweetAlert2 CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

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

			<!-- <ul class="nav user-menu">
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
			</ul> -->

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
		</div></div>

	<section>
		<div data-aos="fade-down" data-aos-easing="linear"
			data-aos-duration="500">
			<div class="container px-5">
				<div class="py-5 px-4 px-md-5 mt-5 pt-5">
					<div class="row gx-5 justify-content-center mt-5 pt-5">
						<div
							class="card shadow rounded-4 border-0 col-sm-8 col-md-6 col-lg-5 p-4">
							<form action="logisticsIn" method="post">
								<div class="text-left pb-3">
									<h1 class="display-5 fw-bolder mb-2 fs-1">
										<span class="d-inline LogoGradient-text fs-2">관리자 로그인</span><br>
									</h1>
								</div>
								<div class="Sans form-floating text-muted mb-3">
									<input class="form-control" name="email" id="email"
										type="email" placeholder="이메일" /> <label for="email">이메일</label>
								</div>
								<div class="Sans form-floating text-muted mb-3">
									<input class="form-control" name="password" id="password"
										placeholder="비밀번호" type="password" /> <label for="password">비밀번호</label>
								</div>
								<div class="Sans text-center">
									<button
										class="btn-1 bg-gradient-primary-to-secondary btn btn-primary btn-lg d-inline-block 
									col-12 fw-bolder fs-4 mt-1"
										id="submitButton" type="submit">로그인</button>
										
										<c:if test="${not empty errorMsg}">
										<input type="text" id="errorMsg" value="${errorMsg}">
										</c:if>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- Core theme JS-->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/prettyAlert.js"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
	
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