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
									<th>재사용</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${usingCall}" var="usingCall">
									<tr>
										<td>${usingCall.name}</td>
										<td>${usingCall.specifications}</td>
										<td>${usingCall.manufacturer}</td>
										<td>${usingCall.category}</td>
										<td>${usingCall.change_date}</td>
										<td>${usingCall.in_charge}</td>
										<td>${usingCall.stock}</td>
										<td>
											<button type="button" id="toggleButton"
												onclick="toggleVisibleYes('${usingCall.name}')"
												class="border border-1 rounded border-0 fs-6 fw-bolder d-inline-block Sans">재사용</button>
											<%-- <td id="Stock_${usingCall.name}">${usingCall.stock}</td> --%>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../resources/assets/js/jquery-3.6.0.min.js"></script>

	<script src="../resources/assets/js/feather.min.js"></script>

	<script src="../resources/assets/js/jquery.slimscroll.min.js"></script>

	<script src="../resources/assets/js/jquery.dataTables.min.js"></script>
	<script src="../resources/assets/js/dataTables.bootstrap4.min.js"></script>

	<script src="../resources/assets/js/bootstrap.bundle.min.js"></script>

	<script src="../resources/assets/plugins/select2/js/select2.min.js"></script>

	<script
		src="../resources/assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	<script src="../resources/assets/plugins/sweetalert/sweetalerts.min.js"></script>

	<script src="../resources/assets/js/script.js"></script>

	<script src="../resources/js/stockAlert.js"></script>
	<!-- <script src="../resources/js/toggleVisible.js"></script> -->

	<script>
	console.log("toggleVisibleYes connect");
	var button = document.getElementById('toggleButton');
	function toggleVisibleYes(name) { // "name" 필요함

	    var button = document.getElementById('toggleButton');

	    if (button.innerText === '재사용') { //database: N

		// 'DB 연결 할 값이 여기에 있어야 한다'
		$.ajax({
		    url : '/stopUsing/' + name + '/toggleVisibleYes', // use a forward slash (/) to separate the parts of the URL.
		    type : 'POST',
		    success : function(response) {
			console.log('Data updated successfully'); // Handle the success response
			//window.location.href = '/stopUsing';  // redirect the user to the desired URL //window.location.href = '/itemDetails/' + name;
		    },
		    error : function(xhr, status, error) {
			console.log('Error updating data:', error); // Handle the error response
		    }
		});
		
		//database: Y -> N
		// 대문자 N (No) 		    //Controller에 전달할 값
		button.innerText = '사용 중지'; //버튼 문자 변경
	    } else {
		// 대문자 Y (Yes)		    //Controller에 전달할 값
		button.innerText = '재사용'; //버튼 문자 변경
	    }
	}
	</script>
<!-- 	<script>
	console.log("toggleVisibleYes connect");
	var button = document.getElementById('toggleButton');
	function toggleVisible(name) { // "name" 필요함

	    var button = document.getElementById('toggleButton');

	    if (button.innerText === '재사용') { //database: N

		// 'DB 연결 할 값이 여기에 있어야 한다'
		$.ajax({
		    url : '/itemDetails/' + name + '/toggleVisible', // use a forward slash (/) to separate the parts of the URL.
		    type : 'POST',
		    success : function(response) {
			console.log('Data updated successfully'); // Handle the success response
			window.location.href = '/stopUsing'; // redirect the user to the desired URL //window.location.href = '/itemDetails/' + name; 
		    },
		    error : function(xhr, status, error) {
			console.log('Error updating data:', error); // Handle the error response
		    }
		});
	    
		//database: N -> Y
		// 대문자 Y (Yes)		    //Controller에 전달할 값
		button.innerText = '사용 중지'; //버튼 문자 변경
	    } else {
		// 대문자 N (No) 		    //Controller에 전달할 값
		button.innerText = '사용중'; //버튼 문자 변경
	    }
	}
    </script> -->

</body>
</html>