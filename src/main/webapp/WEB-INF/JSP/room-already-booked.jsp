<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room Already Booked</title>

<style>
body {
	font-family: 'Segoe UI';
	background: #f4f6f9;
	text-align: center;
	padding-top: 100px;
}

.box {
	display: inline-block;
	background: white;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0,0,0,0.1);
}

.error {
	color: red;
	font-size: 20px;
	margin-bottom: 20px;
}

.btn {
	padding: 10px 15px;
	background: #3498db;
	color: white;
	text-decoration: none;
	border-radius: 6px;
}
</style>

</head>
<body>

<div class="box">

	<div class="error">
		❌ This room is already booked!
	</div>

	<a href="rooms" class="btn">🏨 Back to Rooms</a>

</div>

</body>
</html>