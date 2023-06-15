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
<title>입고 등록</title>

<!-- <link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/assets/css/animate.css">

<link rel="stylesheet"
	href="resources/assets/plugins/select2/css/select2.min.css">

<link rel="stylesheet"
	href="resources/assets/css/dataTables.bootstrap4.min.css">

<link rel="stylesheet"
	href="resources/assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="resources/assets/plugins/fontawesome/css/all.min.css">

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
										<h3 class="Sans fs-3">입고 등록</h3>
								</div>
							</div>
							<div class="col-lg-12 col-sm-6 col-12">
								<div class="form-group">
									<label>물품명</label> <input name="name" type="text"
										class="inputStyle"> <!-- 물품명 -->
								</div>
							</div>
							<div class="col-lg-12 col-sm-6 col-12">
								<div class="form-group">
									<label>분류</label> <input name="category" type="text"
										class="inputStyle">
								</div>
							</div>
							<div class="col-lg-12 col-sm-6 col-12">
								<div class="form-group">
									<label>현재고 </label> <input name="stock" type="text"
										class="inputStyle">
								</div>
							</div>
							<br>
							<div class="col-lg-12 col-sm-6 col-12">
								<div class="form-group">
									<label>들어온 재고</label> <input name="quantity" type="text"
										class="inputStyle">
								</div>
							</div>
							<br>
							<div class="col-lg-12 col-sm-6 col-12">
								<div class="form-group">
									<label>비고</label> <input name="memo" type="text"
										class="inputStyle">
								</div>
							</div>
							<br>
							<div class="col-lg-12 text-center Sans">
								<button type="submit"
									class="btn btn-submit fs-5 fw-bolder d-inline-block col-12 ">등록하기</button>
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

	<script
		src="resources/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	<script src="resources/assets/plugins/sweetalert/sweetalerts.min.js"></script>

	<script src="resources/assets/js/script.js"></script>
</body>
</html>