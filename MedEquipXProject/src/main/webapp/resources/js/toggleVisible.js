// Button for Stop using and Start using
// ajax 작성: triggering the AJAX request to update the data in the background and then redirecting the user to the updated item details page. 
console.log("toggleVisible connect");
var button = document.getElementById('toggleButton');
function toggleVisible(name) { // "name" 필요함

    var button = document.getElementById('toggleButton');

    if (button.innerText === '사용 중지') {

	// 'DB 연결 할 값이 여기에 있어야 한다'
	$.ajax({
	    url : '/itemDetails/' + name + '/toggleVisible', // use a forward slash (/) to separate the parts of the URL.
	    type : 'POST',
	    success : function(response) {
		console.log('Data updated successfully'); // Handle the success response
		window.location.href = '/dashboard';
		//window.location.href = '/itemDetails/' + name; // redirect the user to the desired URL
	    },
	    error : function(xhr, status, error) {
		console.log('Error updating data:', error); // Handle the error response
	    }
	});

	// 대문자 N (No) 		    //Controller에 전달할 값
	button.innerText = '재사용'; //버튼 문자 변경
    } else {
	// 대문자 Y (Yes)		    //Controller에 전달할 값
	button.innerText = '사용 중지'; //버튼 문자 변경
    }

}

/*
 * The Java code you have implemented handles the server-side logic, such as
 * updating the 'visible' column in the MySQL database when the button is
 * clicked. The JavaScript code, on the other hand, handles the client-side
 * behavior, which is updating the button text dynamically without reloading the
 * page.
 * 
 * When the button is clicked, the JavaScript code will execute in the browser,
 * and you can make an asynchronous request to the server-side Java code using
 * AJAX or fetch API to update the database. Once the response is received, you
 * can then update the button text in the browser using JavaScript.
 * 
 * 
 * 
 * var button = document.getElementById('toggleButton');
 * 
 * function toggleVisibility(name) { // "name" 필요함
 * 
 * if (button.innerText === '사용 중지') {
 *  // Teacher: 'DB 연결 할 값이 여기에 있어야 한다'
 * 
 * 
 * 
 *  // ajax 작성
 * 
 * 
 *  // 대문자 N (No) // Controller에 전달할 값 button.innerText = '재사용'; // 버튼 문자 변경 }
 * else { // 대문자 Y (Yes) // Controller에 전달할 값 button.innerText = '사용 중지'; // 버튼
 * 문자 변경 }
 *  }
 * 
 * button.addEventListener('click', toggleVisibility);
 * button.addEventListener('click', function() {
 * 
 * if (button.innerText === '사용 중지') { button.innerText = '재사용'; } else {
 * button.innerText = '사용 중지' } });
 */