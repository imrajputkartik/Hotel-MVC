<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.hotel.model.Booking"%>

<%
Booking b = (Booking) request.getAttribute("booking");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Success</title>

<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(to right, #74ebd5, #ACB6E5);
	margin: 0;
}

/* Container */
.container {
	width: 40%;
	margin: 80px auto;
	background: white;
	padding: 30px;
	border-radius: 15px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	text-align: center;
}

/* Success Icon */
.success-icon {
	font-size: 60px;
	color: #27ae60;
}

/* Heading */
h2 {
	color: #27ae60;
	margin-top: 10px;
}

/* Details Box */
.details {
	margin-top: 20px;
	text-align: left;
	background: #f9f9f9;
	padding: 20px;
	border-radius: 10px;
}

.details p {
	margin: 10px 0;
	font-size: 16px;
	border-bottom: 1px solid #eee;
	padding-bottom: 5px;
}

/* Buttons */
.btn-group {
	margin-top: 20px;
}

.btn {
	padding: 10px 15px;
	margin: 5px;
	text-decoration: none;
	border-radius: 6px;
	color: white;
	display: inline-block;
}

.rooms-btn {
	background: #3498db;
}

.dashboard-btn {
	background: #2c3e50;
}

.btn:hover {
	opacity: 0.9;
}
</style>

</head>
<body>

	<div class="container">

		<div class="success-icon">✅</div>

		<h2>Booking Confirmed!</h2>
		<p>Your room has been successfully booked 🎉</p>

		<%
		if (b != null) {
		%>

		<div class="details">
			<p>
				<b>Room No:</b>
				<%=b.getRoomNo()%></p>
			<p>
				<b>Guest Name:</b>
				<%=b.getName()%></p>
			<p>
				<b>Mobile:</b>
				<%=b.getMobile()%></p>
			<p>
				<b>Members:</b>
				<%=b.getMembers()%></p>
			<p>
				<b>Check-In Date:</b>
				<%=b.getCheckIn()%></p>
			<p>
				<b>Check-Out Date:</b>
				<%=b.getCheckOut()%></p>
		</div>

		<%
		}
		%>

		<div class="btn-group">
			<a href="rooms" class="btn rooms-btn">🏨 View Rooms</a> <a
				href="dashboard" class="btn dashboard-btn">🏠 Dashboard</a>
		</div>

	</div>

</body>
</html>