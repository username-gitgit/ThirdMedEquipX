function handleFileSelect(event) {
    const file = event.target.files[0];
    const reader = new FileReader();

    reader.onload = function(e) {
	const imageSrc = e.target.result;
	const previewElement = document.getElementById('preview');
	const myFileInputElement = document.getElementById('myFileInput');
	const cardBodyElement = document.getElementById('card-bodyImage');
	const headingElement = document.getElementById('imgExplain');

	const img = new Image();
	img.src = imageSrc;

	img.onload = function() {
	    const screenWidth = window.innerWidth;
	    const screenHeight = window.innerHeight;
	    const width = img.width;
	    const height = img.height;
	    // 이미지 크기 계산
	    // Calculate the new width and height while maintaining the aspect ratio
	    let newWidth = width;
	    let newHeight = height;

	    if (width > screenWidth) {
		newWidth = screenWidth;
		newHeight = (screenWidth * height) / width;
	    }

	    if (newHeight > screenHeight) {
		newHeight = screenHeight;
		newWidth = (screenHeight * width) / height;
	    }

	    myFileInputElement.style.height = newHeight + 'px';
	    // 크기 조정된 이미지로 미리보기 엘리먼트 업데이트
	    const resizedImg = document.createElement('img');
	    resizedImg.src = imageSrc;
	    resizedImg.width = newWidth;
	    resizedImg.height = newHeight;

	    const existingImg = document.getElementById('imgSrc');
	    if (existingImg) {
		existingImg.parentNode.removeChild(existingImg);
	    }

	    /* 	        const existingImg = document.getElementById('imgSrc');
	     existingImg.parentNode.removeChild(existingImg); */

	    previewElement.innerHTML = '';
	    previewElement.appendChild(resizedImg);

	    // Hide the heading with id "imgExplain" after an image is attached
	    headingElement.style.display = 'none';

	    // Reset the card-body height to its default value
	    cardBodyElement.style.height = null;
	    cardBodyElement.classList.add('scrollable');
	};
    };

    reader.readAsDataURL(file);
}

/*	function handleFileSelect(event) {
 const file = event.target.files[0]; // 선택한 파일 가져오기
 const reader = new FileReader();

 reader.onload = function(e) {
 const imageSrc = e.target.result;
 const previewElement = document.getElementById('preview');

 const img = new Image();
 img.src = imageSrc;

 img.onload = function() {
 const maxWidth = 1000; // 원하는 최대 너비 값 설정
 const maxHeight = 500; // 원하는 최대 높이 값 설정

 // 이미지 크기 계산
 let width = img.width;
 let height = img.height;

 if (width > maxWidth) {
 height *= maxWidth / width;
 width = maxWidth;
 }

 if (height > maxHeight) {
 width *= maxHeight / height;
 height = maxHeight;
 }

 // 크기 조정된 이미지로 미리보기 엘리먼트 업데이트
 const resizedImg = document.createElement('img');
 resizedImg.src = imageSrc;
 resizedImg.width = width;
 resizedImg.height = height;

 const existingImg = document.getElementById('imgSrc');
 existingImg.parentNode.removeChild(existingImg);

 previewElement.innerHTML = '';
 previewElement.appendChild(resizedImg);
 };
 };

 reader.readAsDataURL(file);
 }*/