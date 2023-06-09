/**
 * 
 */

console.log("changeColor connected");
console.log("color.js Array = "+dataArray);

$(document).ready(function() {
	// 자바스크립트
	if(document.getElementById("Stock_MacFerran")){
	    console.log("해당 객체 존재함");
	}else{
	    console.log("해당 객체 존재안함");
	}

	// jQuery
	if($("#Stock_Paseta").length > 0){
	    console.log("jquery : 해당 객체 존재함");
	}else{
	    console.log("jquery : 해당 객체 존재안함");
	}
	
	var Stock_MacFerran = document.getElementById('Stock_MacFerran').textContent;
	console.log(Stock_MacFerran);
});
	
window.onload = function() {
	checkStock();
};
	
// 재고 체크 함수
function checkStock() {

	console.log("call checkStock()");
	const minimumStock = 200;

	var HartmannCount = document.getElementById('Stock_Hartmann solution').innerText;
	var syringeCount = document.getElementById('Stock_syringe 3cc').innerText;
	var tridolCount = parseInt(document.getElementById('Stock_Tridol').innerText);
	console.log(syringeCount);
	console.log("HartmannCount");
	console.log(tridolCount);
	// 주사기의 갯수가 최소 재고량보다 적을 때
	if (syringeCount < minimumStock) {
		console.log("syringeCount");
		document.getElementById('Stock_syringe 3cc').style.color = 'red';
	} else {
		document.getElementById('Stock_syringe 3cc').style.color = ''; // 기본 글자색으로 되돌리기
	}

	// 메디컷의 갯수가 최소 재고량보다 적을 때
	if (HartmannCount < minimumStock) {
		console.log("HartmannCount");
		document.getElementById('Stock_Hartmann solution').style.color = 'red';
	} else {
		document.getElementById('Stock_Hartmann solution').style.color = '';
	}

	// Tridol의 갯수가 최소 재고량보다 적을 때
	if (tridolCount < minimumStock) {
		document.getElementById('Stock_Tridol').style.color = 'red';
	} else {
		document.getElementById('Stock_Tridol').style.color = '';
	}
}

// 페이지 로드 시 재고 체크 수행
//window.onload = function() {
//	checkStock();
//};

	

