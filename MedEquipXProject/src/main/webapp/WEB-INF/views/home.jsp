<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>


아아아
안녕 한글 깨지니?
<a href="LogIn">LogIn page</a>
<a href="SignUp">SignUp page</a>
<a href="dashboard">dashboard page</a>
<br>
<a href="itemDetails">itemDetails page</a>
<a href="orderHistory">orderHistory page</a>
업로드
	<form action="uploadForm" method="post" enctype="multipart/form-data">
		<input type="file" name="file" id="myFileInput" onchange="handleFileSelect(event)" multiple>
		<div id="preview"></div>
		<input type="submit" value="파일전송">
	</form>
<script>
  function handleFileSelect(event) {
    const file = event.target.files[0]; // 선택한 파일 가져오기
    const reader = new FileReader();

    reader.onload = function(e) {
      const imageSrc = e.target.result;
      const previewElement = document.getElementById('preview');
      previewElement.innerHTML = '<img src="' + imageSrc + '">';
    };

    reader.readAsDataURL(file); // 파일을 읽어서 데이터 URL로 변환
  }
</script>
</body>
</html>
