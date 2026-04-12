<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.hotel.model.Booking"%>

<%
List<Booking> bookings = (List<Booking>) request.getAttribute("bookings");

// booked rooms ka set
Set<Integer> bookedRooms = new HashSet<>();
if (bookings != null) {
	for (Booking b : bookings) {
		bookedRooms.add(b.getRoomNo());
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rooms</title>

<style>
body {
	font-family: Arial;
	margin: 0;
	background: #f4f6f9;
}

/* 🔥 FINAL HEADER (THODA AUR CHODA) */
.header {
	background: #2c3e50;
	color: white;
	padding: 22px 30px; /* 👈 updated */
	display: flex;
	align-items: center;
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
}

/* 🎯 CENTER TITLE */
.header h1 {
	margin: 0;
	font-size: 24px;
	font-weight: bold;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
}

/* ⬅ LEFT BUTTON */
.header a {
	position: absolute;
	left: 25px;
	color: white;
	text-decoration: none;
	background: #3498db;
	padding: 9px 18px;
	border-radius: 6px;
	font-size: 15px;
}

/* 🔥 container */
.container {
	display: flex;
	justify-content: space-around;
	padding: 20px;
	margin-top: 110px; /* 👈 updated */
	height: calc(100vh - 120px);
}

/* 🔥 COLUMN */
.column {
	width: 30%;
	background: white;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	display: flex;
	flex-direction: column;
	overflow: hidden;
}

/* 🔥 FIXED HEADING */
.column h2 {
	text-align: center;
	background: #ecf0f1;
	margin: 0;
	padding: 10px;
	position: sticky;
	top: 0;
	z-index: 1;
}

/* 🔥 SCROLL ONLY LIST */
.room-list {
	overflow-y: auto;
	padding: 10px;
}

/* Room Card */
.room {
	border: 1px solid #ddd;
	padding: 10px;
	margin: 10px 0;
	border-radius: 8px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.available {
	color: green;
	font-weight: bold;
}

.not-available {
	color: red;
	font-weight: bold;
}

.btn {
	padding: 5px 10px;
	background: green;
	color: white;
	text-decoration: none;
	border-radius: 5px;
}

.btn:hover {
	background: darkgreen;
}

.disabled {
	color: gray;
}
</style>

</head>
<body>

	<!-- 🔥 HEADER -->
	<div class="header">
		<a href="dashboard">⬅ Dashboard</a>
		<h1>Hotel Rooms</h1>
	</div>

	<!-- 🔥 MAIN -->
	<div class="container">

		<!-- SINGLE -->
		<div class="column">
			<h2>Single Rooms</h2>

			<div class="room-list">
				<%
				for (int i = 1; i <= 20; i++) {
					boolean isBooked = bookedRooms.contains(i);
				%>

				<div class="room">
					<span>Room <%=i%> (₹1000)
					</span> <span class="<%=isBooked ? "not-available" : "available"%>">
						<%=isBooked ? "Booked" : "Available"%>
					</span>

					<%
					if (!isBooked) {
					%>
					<a class="btn" href="bookRoom?roomNo=<%=i%>">Book</a>
					<%
					} else {
					%>
					<span class="disabled">Not Allowed</span>
					<%
					}
					%>
				</div>

				<%
				}
				%>
			</div>
		</div>

		<!-- DOUBLE -->
		<div class="column">
			<h2>Double Rooms</h2>

			<div class="room-list">
				<%
				for (int i = 21; i <= 40; i++) {
					boolean isBooked = bookedRooms.contains(i);
				%>

				<div class="room">
					<span>Room <%=i%> (₹2000)
					</span> <span class="<%=isBooked ? "not-available" : "available"%>">
						<%=isBooked ? "Booked" : "Available"%>
					</span>

					<%
					if (!isBooked) {
					%>
					<a class="btn" href="bookRoom?roomNo=<%=i%>">Book</a>
					<%
					} else {
					%>
					<span class="disabled">Not Allowed</span>
					<%
					}
					%>
				</div>

				<%
				}
				%>
			</div>
		</div>

		<!-- DELUXE -->
		<div class="column">
			<h2>Deluxe Rooms</h2>

			<div class="room-list">
				<%
				for (int i = 41; i <= 50; i++) {
					boolean isBooked = bookedRooms.contains(i);
				%>

				<div class="room">
					<span>Room <%=i%> (₹3000)
					</span> <span class="<%=isBooked ? "not-available" : "available"%>">
						<%=isBooked ? "Booked" : "Available"%>
					</span>

					<%
					if (!isBooked) {
					%>
					<a class="btn" href="bookRoom?roomNo=<%=i%>">Book</a>
					<%
					} else {
					%>
					<span class="disabled">Not Allowed</span>
					<%
					}
					%>
				</div>

				<%
				}
				%>
			</div>
		</div>

	</div>

</body>
</html>