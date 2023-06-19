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
<style>
.inputStyle {
	background-color: #fafafa !important;
	box-shadow: inset 0 1px 3px 0 rgba(0, 0, 0, .08);
}

.auto-height {
	height: auto !important;
}
</style>
</head>
<!-- Navigation-->
<jsp:include page="nav.jsp" flush="false" />
<body>
	<form action="uploadForm" method="post" enctype="multipart/form-data">
		<div id="global-loader">
			<div class="whirly-loader"></div>
		</div>
		<!-- Contents -->
		<div class="page-wrapper">
			<div class="content">
				<div class="row">
					<div class="col-lg-8 col-sm-12">
						<div class="col-lg-7 card shadow rounded-4 border-0">
							<div class="card-body" style="height: 100%;">
								<div class="page-header">
									<div class="page-title">
										<h4 class="Sans fs-3">신규 물품 등록</h4>
									</div>
								</div>

								<div class="productdetails">
									<div class="col-lg-12 col-sm-6 col-12">
										<div class="form-group">
											<label>물품명</label> <input type="text" name="name"
												class="inputStyle">
										</div>
									</div>
									<br>
									<div class="col-lg-12 col-sm-6 col-12">
										<div class="form-group">
											<label>대분류</label> <input type="text" name="category"
												class="inputStyle">
										</div>
									</div>
									<br>
									<div class="col-lg-12 col-sm-6 col-12">
										<div class="form-group">
											<label>중분류</label> <input type="text" name="subcategory"
												class="inputStyle">
										</div>
									</div>
									<br>
									<div class="col-lg-12 col-sm-6 col-12">
										<div class="form-group">
											<label>규격</label> <input type="text" name="specifications"
												class="inputStyle">
										</div>
									</div>
									<br>
									<div class="col-lg-12 col-sm-6 col-12">
										<div class="form-group">
											<label>제조사</label> <input type="text" name="manufacturer"
												class="inputStyle">
										</div>
									</div>
									<br>
									<div class="col-lg-12 text-center Sans">
										<button type="submit"
											class="btn btn-submit fs-5 fw-bolder d-inline-block col-12">
											물품 등록하기</button>
									</div>
								</div>

							</div>
						</div>
					</div>

					<div class="col-lg-4 col-sm-12">
						<div class="card shadow rounded-4 border-0">
							<div class="card-body" id="card-bodyImage" style="height: auto;">
								<div class="page-header">
									<div class="page-title">
										<h4 class="Sans fs-3">물품 사진 등록하기</h4>
									</div>
								</div>
								<div class="slider-product-details">
									<div class="owl-carousel owl-theme">
										<!-- icon: product-slide -->
										<div class="slider-product">
											<div class="col-lg-12">
												<div class="form-group">
													<div class="image-upload">
														<input type="file" name="file" id="myFileInput" style=""
															onchange="handleFileSelect(event)">
														<div class="image-uploads">
															<div id="preview"></div>
															<img src="resources/assets/img/icons/upload.svg"
																id="imgSrc" alt="img">
															<h4 id="imgExplain">사진 등록하기</h4>
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
				</div>
			</div>
		</div>
		</div>
	</form>

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

	<script src="../resources/js/newItemImage.js"></script>
</body>
</html>