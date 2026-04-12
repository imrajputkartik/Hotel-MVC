<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

body {
	background: #f4f6f9;
}

/* Navbar */
.navbar {
	background: #2c3e50;
	color: white;
	padding: 15px 30px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.nav-right {
	display: flex;
	gap: 10px;
}

/* Buttons */
.logout-btn {
	background: #e74c3c;
	border: none;
	padding: 8px 15px;
	color: white;
	border-radius: 6px;
	cursor: pointer;
}

.record-btn {
	background: #3498db;
	border: none;
	padding: 8px 15px;
	color: white;
	border-radius: 6px;
	cursor: pointer;
}

/* Main Layout */
.container {
	padding: 30px;
	display: flex;
	gap: 30px;
}

/* LEFT SIDE */
.left {
	width: 30%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.booking-card {
	background: white;
	padding: 40px;
	border-radius: 15px;
	box-shadow: 0 10px 25px rgba(39, 174, 96, 0.3);
	text-align: center;
	transform: scale(1.05);
	position: relative;
	transition: 0.3s;
}

.booking-card:hover {
	transform: scale(1.08);
	box-shadow: 0 15px 35px rgba(39, 174, 96, 0.5);
}

.booking-card::before {
	content: "⭐ Recommended";
	position: absolute;
	top: -10px;
	right: -10px;
	background: #27ae60;
	color: white;
	font-size: 12px;
	padding: 5px 10px;
	border-radius: 20px;
}

.booking-card h2 {
	color: #27ae60;
	margin-bottom: 10px;
}

.booking-card p {
	color: #777;
}

.booking-btn {
	margin-top: 15px;
	padding: 12px 20px;
	background: #27ae60;
	color: white;
	border: none;
	border-radius: 8px;
	cursor: pointer;
	font-size: 16px;
}

/* RIGHT SIDE */
.right {
	width: 70%;
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 20px;
	align-content: center;
}

/* Cards */
.card {
	background: white;
	padding: 25px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
	text-align: center;
	transition: 0.3s;
	cursor: pointer;
}

.card:hover {
	transform: translateY(-5px);
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

.card h3 {
	margin-bottom: 10px;
	color: #333;
}

.card p {
	color: #777;
	font-size: 14px;
}

/* Colors */
.rooms {
	border-top: 4px solid #3498db;
}

.services {
	border-top: 4px solid #9b59b6;
}

.checkout {
	border-top: 4px solid #f39c12;
}

.guests {
	border-top: 4px solid #1abc9c;
}

/* Footer */
.footer {
	text-align: center;
	padding: 20px;
	color: #888;
}
</style>

</head>

<body>

	<!-- Navbar -->
	<div class="navbar">
		<h2>🏨 Hotel Management Dashboard</h2>

		<div class="nav-right">

			<!-- ✅ Guest Record Button -->
			<a href="${pageContext.request.contextPath}/guestRecord">
				<button class="record-btn">Guest Record</button>
			</a>

			<!-- Logout Button -->
			<form action="${pageContext.request.contextPath}/logout"
				method="post">
				<button class="logout-btn">Logout</button>
			</form>

		</div>
	</div>

	<!-- Main -->
	<div class="container">

		<!-- LEFT SIDE -->
		<div class="left">
			<div class="booking-card">
				<h2>🚀 Book Room</h2>
				<p>Quickly create a new booking</p>

				<a href="${pageContext.request.contextPath}/bookRoom">
					<button class="booking-btn">Book Now</button>
				</a>
			</div>
		</div>

		<!-- RIGHT SIDE -->
		<div class="right">

			<a href="${pageContext.request.contextPath}/rooms"
				style="text-decoration: none;">
				<div class="card rooms">
					<h3>🏠 Rooms</h3>
					<p>View all rooms</p>
				</div>
			</a> <a href="${pageContext.request.contextPath}/services"
				style="text-decoration: none;">
				<div class="card services">
					<h3>🛎️ Services</h3>
					<p>Hotel services</p>
				</div>
			</a> <a href="${pageContext.request.contextPath}/checkout"
				style="text-decoration: none;">
				<div class="card checkout">
					<h3>💳 Checkout</h3>
					<p>Process checkout</p>
				</div>
			</a> <a href="${pageContext.request.contextPath}/guests"
				style="text-decoration: none;">
				<div class="card guests">
					<h3>👥 Guests</h3>
					<p>Guest information</p>
				</div>
			</a>

		</div>

	</div>

	<!-- Footer -->
	<div class="footer">
		<p>© 2026 Hotel Management System | Designed for Real-World Use</p>
	</div>

</body>
</html>