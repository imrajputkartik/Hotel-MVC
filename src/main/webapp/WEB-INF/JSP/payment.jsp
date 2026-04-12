<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String amount = request.getParameter("amount");
if (amount == null) {
	amount = "0";
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>

<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(to right, #74ebd5, #ACB6E5);
	margin: 0;
}

/* Container */
.container {
	width: 35%;
	margin: 80px auto;
	background: white;
	padding: 30px;
	border-radius: 15px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	text-align: center;
}

/* Heading */
h2 {
	color: #333;
	margin-bottom: 20px;
}

/* QR Box */
.qr-box {
	width: 200px;
	height: 200px;
	margin: 0 auto;
	background: #eee;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 10px;
	font-weight: bold;
	color: #555;
}

/* Amount */
.amount {
	margin-top: 20px;
	font-size: 22px;
	font-weight: bold;
	color: #27ae60;
}

/* Buttons */
.btn {
	margin-top: 15px;
	padding: 12px 20px;
	background: #27ae60;
	color: white;
	border: none;
	border-radius: 8px;
	cursor: pointer;
	font-size: 16px;
	width: 100%;
}

.btn:hover {
	background: #219150;
}

/* Secondary buttons */
.link-btn {
	display: inline-block;
	margin-top: 15px;
	padding: 10px 15px;
	background: #3498db;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	margin-right: 10px;
}

.link-btn:hover {
	background: #2980b9;
}
</style>

</head>
<body>

	<div class="container">

		<h2>💳 Complete Your Payment</h2>

		<!-- 🔳 Fake QR Scanner -->
		<div class="qr-box">Scan & Pay</div>

		<!-- 💰 Final Amount -->
		<div class="amount">
			💰 Amount to Pay: ₹
			<%=amount%>
		</div>

		<!-- ✅ Confirm Payment -->
		<form action="confirmBooking" method="post">
			<button type="submit" class="btn">✅ Confirm Payment</button>
		</form>

		<!-- 🔙 Navigation Options -->
		<div>
			<a href="javascript:history.back()" class="link-btn">⬅ Back to
				Form</a> <a href="rooms" class="link-btn">🏨 Go to Rooms</a>
		</div>

	</div>

</body>
</html>