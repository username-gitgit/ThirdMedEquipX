/**
 * 
 */

console.log("changeColor connected");

$(document).ready(function() {
	var Stock_MacFerran = document.getElementById('Stock_MacFerran').textContent;
	console.log(Stock_MacFerran);
});
	
	
// 재고 체크 함수
function checkStock() {

	console.log("call checkStock()");
	const minimumStock = 200;

	const HartmannCount = parseInt(document.getElementById('Stock_Hartmann solution').innerText);
	const syringeCount = parseInt(document.getElementById('Stock_syringe3cc').innerText);
	const tridolCount = parseInt(document.getElementById('Stock_Tridol').innerText);

	// 주사기의 갯수가 최소 재고량보다 적을 때
	if (syringeCount < minimumStock) {
		document.getElementById('Stock_syringe3cc').style.color = 'red';
	} else {
		document.getElementById('Stock_syringe3cc').style.color = ''; // 기본 글자색으로 되돌리기
	}

	// 메디컷의 갯수가 최소 재고량보다 적을 때
	if (HartmannCount < minimumStock) {
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
window.onload = function() {
	checkStock();
};
	

