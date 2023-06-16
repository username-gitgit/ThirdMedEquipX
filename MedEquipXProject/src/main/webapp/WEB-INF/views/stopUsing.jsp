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
<title>사용 중지 물품 리스트</title>

<link rel="shortcut icon" type="image/x-icon"
	href="resources/assets/img/favicon.png">

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
	<div class="page-wrapper">
		<div class="content">
			<div class="page-header">
				<div class="page-title">
					<h4>사용 중지 물품 리스트</h4>
				</div>
			</div>
			<div class="card">
				<div class="card-body">
					<div class="table-top">
						<div class="search-set">
							<div class="search-input">
								<a class="btn btn-searchset"><img
									src="../resources/assets/img/icons/search-white.svg" alt="img"></a>
							</div>
						</div>
					</div>

					<!-- <div class="mb-3">
						<form action="dashboard" method="get">
							btn btn-submit 
							원래 영어 단어: syringe catheter 3way non-drug painkillers Nonsteroidal Painkillers digestive organs Brain improvement Nervous Sanctions Allergic inhibitors electrolyte solution
							<span class="fw-bold">분류</span>
							<button
								class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans"
								type="submit" name="subcategory" value="syringe">주사</button>
							<button
								class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans"
								type="submit" name="subcategory" value="catheter">카테터</button>
							<button
								class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans"
								type="submit" name="subcategory" value="3way">3way</button>
							<button
								class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans"
								type="submit" name="subcategory" value="non-drug painkillers">비약물
								진통제</button>
							<button
								class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans"
								type="submit" name="subcategory"
								value="Nonsteroidal Painkillers">비스테로이드성 진통제</button>
							<button
								class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans"
								type="submit" name="subcategory" value="digestive organs">소화기관</button>
							<button
								class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans"
								type="submit" name="subcategory" value="Brain improvement">뇌
								기능 향상</button>
							<button
								class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans"
								type="submit" name="subcategory" value="Nervous Sanctions">신경
								제재</button>
							<button
								class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans"
								type="submit" name="subcategory" value="Allergic inhibitors">알레르기
								억제제</button>
							<button
								class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans"
								type="submit" name="subcategory" value="electrolyte solution">전해질
								용액</button>
						</form>
					</div> -->

					<!-- Contents -->
					<div class="table-responsive">
						<table id="dataList" class="table  datanew">
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
								<c:forEach items="${usingCall}" var="usingCall">
									<tr>
										<td id="dataName" class="productimgname"><a
											href="itemDetails/${usingCall.name}">${usingCall.name}</a></td>
										<td>${usingCall.specifications}</td>
										<td>${usingCall.manufacturer}</td>
										<td>${usingCall.category}</td>
										<td>${usingCall.change_date}</td>
										<td>${usingCall.in_charge}</td>
										<td>${usingCall.quantity}</td>
										<%-- <td id="Stock_${usingCall.name}">${usingCall.stock}</td> --%>
									</tr>
								</c:forEach>
								<%-- <c:if test="${not empty getCategory}">
									<c:forEach items="${getCategory}" var="getCategory">
										<tr>
											<td id="dataName" class="productimgname"><a
												href="itemDetails/${getCategory.name}">${getCategory.name}</a></td>
											<td>${getCategory.specifications}</td>
											<td>${getCategory.manufacturer}</td>
											<td>${getCategory.category}</td>
											<td>${getCategory.change_date}</td>
											<td>${getCategory.in_charge}</td>
											<td id="Stock_${getCategory.name}">${getCategory.stock}</td>
										</tr>
									</c:forEach>
								</c:if> --%>
							</tbody>
						</table>
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

	<script src="resources/js/stockAlert.js"></script>
	<!-- 	<script src="resources/js/changeColor.js"></script> -->

</body>


</html>