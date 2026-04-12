<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Integer roomNo = (Integer) request.getAttribute("roomNo");

// Price logic
int price = 0;
if (roomNo != null) {
	if (roomNo >= 1 && roomNo <= 20)
		price = 1000;
	else if (roomNo <= 40)
		price = 2000;
	else if (roomNo <= 50)
		price = 3000;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room Booking</title>

<style>
body {
	font-family: 'Segoe UI';
	background: #f4f6f9;
	margin: 0;
}

.top-bar {
	position: fixed;
	top: 0;
	width: 100%;
	padding: 15px 30px;
	background: #f4f6f9;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.dashboard-btn {
	background: #3498db;
	color: white;
	padding: 10px 18px;
	border-radius: 8px;
	border: none;
	cursor: pointer;
}

.container {
	width: 40%;
	margin: 100px auto;
	background: white;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

input, select {
	width: 100%;
	padding: 10px;
	margin: 8px 0 15px;
	border-radius: 6px;
	border: 1px solid #ccc;
}

.submit-btn {
	width: 100%;
	padding: 14px;
	background: #27ae60;
	color: white;
	border: none;
	border-radius: 8px;
	cursor: pointer;
	font-size: 16px;
	font-weight: bold;
}
</style>

</head>
<body>

	<div class="top-bar">
		<a href="dashboard">
			<button class="dashboard-btn">⬅ Dashboard</button>
		</a>
	</div>

	<div class="container">

		<h2>🏨 Room Booking Form</h2>

		<%
		String error = (String) request.getAttribute("error");
		if (error != null) {
		%>
		<p style="color: red; text-align: center;"><%=error%></p>
		<%
		}
		%>

		<form action="saveBooking" method="post"
			onsubmit="return validateForm()">

			Room No:
			<%
		if (roomNo != null) {
		%>
			<input type="number" id="roomNo" name="roomNo" value="<%=roomNo%>"
				readonly>
			<%
			} else {
			%>
			<input type="number" id="roomNo" name="roomNo" required
				oninput="updatePrice()">
			<%
			}
			%>

			Name: <input type="text" name="name" required> Gender: <select
				name="gender">
				<option>Male</option>
				<option>Female</option>
			</select> Members: <input type="number" name="members" required>

			Address: <input type="text" name="address"> State: <input
				type="text" name="state"> Nationality: <input type="text"
				name="nationality"> Adhar No: <input type="text"
				name="adharNo"> Mobile: <input type="text" name="mobile"
				required> Check In: <input type="date" id="checkIn"
				name="checkIn" required onchange="updateAmount()"> Check
			Out: <input type="date" id="checkOut" name="checkOut" required
				onchange="updateAmount()">

			<!-- 🔥 Hidden amount -->
			<input type="hidden" name="amount" id="finalAmount">

			<!-- 🔥 BUTTON WITH AMOUNT -->
			<button type="submit" class="submit-btn">
				Proceed to Payment 💳 (₹ <span id="amount"><%=price%></span>)
			</button>

		</form>

	</div>

	<script>
		let price =
	<%=price%>
		;

		// 🔥 Room change
		function updatePrice() {
			let roomNo = document.getElementById("roomNo").value;

			if (roomNo >= 1 && roomNo <= 20)
				price = 1000;
			else if (roomNo <= 40)
				price = 2000;
			else if (roomNo <= 50)
				price = 3000;
			else
				price = 0;

			updateAmount();
		}

		// 🔥 Amount calc
		function updateAmount() {

			let checkIn = document.getElementById("checkIn").value;
			let checkOut = document.getElementById("checkOut").value;

			if (checkIn && checkOut && price > 0) {

				let d1 = new Date(checkIn);
				let d2 = new Date(checkOut);

				let diff = (d2 - d1) / (1000 * 60 * 60 * 24);

				if (diff > 0) {
					let total = diff * price;

					document.getElementById("amount").innerText = total;
					document.getElementById("finalAmount").value = total;
				}
			}
		}

		// ✅ validation
		function validateForm() {

			let checkIn = document.getElementById("checkIn").value;
			let checkOut = document.getElementById("checkOut").value;
			let mobile = document.querySelector("input[name='mobile']").value;

			if (checkIn >= checkOut) {
				alert("Check-out must be after Check-in");
				return false;
			}

			if (!/^[0-9]{10}$/.test(mobile)) {
				alert("Enter valid 10 digit mobile number");
				return false;
			}

			return true;
		}
	</script>

</body>
</html>