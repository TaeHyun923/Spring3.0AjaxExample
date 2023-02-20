<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX Example</title>
<script type="text/javascript" src="resources/js/jquery-3.6.3.min.js"></script>
<script>
	$(document).ready(function() {
		$("#btn").click(function() {
			$.ajax({
				url : "example", // the URL of the JSP file to receive the AJAX request
				type : "POST", // the HTTP method to use (POST or GET)
				data : {
					name : "John",
					age : 30
				}, // the data to send to the server (as an object)
				success : function(response) {
					//	console.log("success!!");
					//alert("success!!");
					$("#result").text(response); // update the content of the element with ID "result" with the response from the server
				},
				error : function() {
					alert("error");

				}
			});
		});
	});
</script>
</head>
<body>
	<h1>AJAX Example</h1>
	<button id="btn">Click me</button>
	<div id="result"></div>
</body>
</html>