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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자 페이지</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="resources/images/hospital.png" />
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
<%
	String member = (String) session.getAttribute("member");
%>
<!-- Navigation-->
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
							<c:if test=${not empty member}>
								<h6>${getName.name}</h6>
								<h5>Manager</h5>
							</c:if>
							</div>
						</div>
						<hr class="m-0">
						<hr class="m-0">
						<a class="dropdown-item logout pb-0" href="signin.html"><img
							src="resources/assets/img/icons/log-out.svg" class="me-2"
							alt="img">로그아웃</a>
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
</div>

<!-- Project 1 Navigation -->
<%-- <div class="print-hide">
	<nav class="navbar navbar-expand-lg bg-white">
		<div class="container px-5">
			<a class="print-hide navbar-brand LogoGradient-text Mont fs-5 px-3"
				href="/"><span class="logo-text fw-bolder">ULSAN GREEN HOSPITAL </span></a>
			<button class="navbar-toggler ms-auto" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse Sans"
				id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0 mx-1 fw-bolder">
					<li class="nav-item nav-link">진료예약</li>
					<!-- <li class="nav-item nav-link">건강정보</li> -->
					<li class="nav-item nav-link">진료파트</li>
					<!-- <li class="nav-item nav-link">나눔소통</li> -->
					<li class="nav-item nav-link">병원안내</li>
				</ul>
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0 fw-bolder">
					<c:if test="${empty common.id and empty adminUser.id}">
						<li class="nav-item"><a href="LogIn"
							class="nav-link badge bg-gradient-primary-to-secondary text-white px-2 me-2 fs-6">로그인</a></li>
					</c:if>
					<%
						String admname = (String) session.getAttribute("name");
					%>
					<%
						String comname = (String) session.getAttribute("commonName");
					%>
					<c:choose>
						<c:when test="${not empty common.id}">
							<li class="nav-link badge  text-muted px-2 me-2 fs-6"><%=comname%>님</li>
						</c:when>
						<c:when test="${not empty adminUser.id}">
							<li class="nav-link badge  text-muted px-2 me-2 fs-6"><%=admname%>님</li>
						</c:when>
					</c:choose>
					<c:if test="${not empty common.id or not empty adminUser.id}">
						<li class="nav-item"><a href="logOut"
							class="nav-link badge bg-gradient-primary-to-secondary text-white px-2 me-2 fs-6">로그아웃</a></li>
					</c:if>
					<c:if test="${empty common.id and empty adminUser.id}">
						<li class="nav-item"><a href="SignUp"
							class="nav-link badge bg-gradient-primary-to-secondary text-white px-2 fs-6">회원가입</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
	<header class="print-hide"> </header>
</div> --%>