<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%
	request.setCharacterEncoding("utf-8");
%>
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

<title>회원가입</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Custom Google font-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet" />
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

			<!--<ul class="nav user-menu">
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
	
	<div data-aos="fade-right" data-aos-offset="300"
		data-aos-easing="ease-in-sine">
		<div class="container px-5 justify-content-center mt-5 pt-5">
			<div class="row gx-5 justify-content-center mt-5 pt-5">
				<div
					class="card shadow rounded-4 border-0 col-sm-8 col-md-6 col-lg-5 px-4 pt-4 pb-1 mb-5">
					<form id="needs-validation" action="SignUp" method="post"
						novalidate>
						<div class="text-left mb-4">
							<h1 class="fw-bolder">
								<span class="d-inline LogoGradient-text fs-1">회원 가입</span>
							</h1>
						</div>
						<!-- 1. 이메일 -->
						<div class="Sans form-floating text-muted mb-3 is-invalid">
							<input class="form-control" name="email" id="email" type="email"
								onchange="checkEmail(this)" placeholder="이메일" /> <label
								for="email">이메일</label> <span id="emailMsg"></span>
						</div>

						<!-- 2. 비밀번호 -->
						<div class="Sans form-floating text-muted mb-3 is-invalid">
							<input class="form-control" name="password" id="password"
								placeholder="비밀번호" type="password" required
								pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{6,}$"
								onchange="validatePassword()" />
							<!-- pattern="^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}" -->
							<label for="password">비밀번호 (영문 숫자 특수문자 조합, 6자리 이상)</label>
							<!-- <span
								style="color: #dc3545; font-size: 0.9rem;" id="msgPassword"></span> -->
							<div class="valid-feedback">좋아요!</div>
							<div class="invalid-feedback">영문자, 숫자, 특수기호 조합으로 6자 이상
								입력하세요.</div>
						</div>

						<!-- 3. 비밀번호 확인 -->
						<div class="Sans form-floating text-muted mb-3 is-invalid">
							<input class="form-control" name="passCk" id="passCk"
								placeholder="비밀번호 확인" type="password" required
								onchange="pwVerifiedCheck()" /> <label for="password">비밀번호
								확인</label>
							<!-- <div class="valid-feedback">좋아요!</div>
							<div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div> -->
							<span style="font-size: 0.9rem;" id="msgPassCk"></span>
						</div>

						<!-- 4. 이름 -->
						<div class="Sans form-floating text-muted mb-3 is-invalid">
							<input class="form-control" name="name" id="name"
								placeholder="이름" type="text" required pattern="^[가-힣]{2,5}$"
								onkeyup="validateName()"> <label for="name">이름</label>
							<div class="valid-feedback">좋아요!</div>
							<div class="invalid-feedback">한글 2~5자 이내로 입력하세요.</div>
						</div>
						<!-- Submit Button-->
						<div class="Sans text-center pt-2 mb-4">
							<input type="submit" value="가입 완료"
								class="btn-1 bg-gradient-primary-to-secondary btn btn-primary btn-lg fs-4 fw-bolder d-inline-block col-12">
							<c:if test="${not empty errorMessage}">
								<div role="alert">${errorMessage}</div>
							</c:if>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="resources/js/checkEmail.js"></script>
	<script src="resources/js/SignUp.js"></script>
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
