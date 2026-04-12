<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkout Portal</title>

<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #667eea, #764ba2);
}

.container {
	width: 90%;
	margin: 30px auto;
	background: white;
	padding: 20px;
	border-radius: 15px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

h2 {
	text-align: center;
	color: #333;
}

.top-bar {
	display: flex;
	justify-content: space-between;
	margin-bottom: 15px;
}

.btn {
	padding: 10px 15px;
	border: none;
	border-radius: 8px;
	cursor: pointer;
	color: white;
	text-decoration: none;
	font-size: 14px;
}

.btn-dashboard {
	background: #3498db;
}

.btn-guest {
	background: #2ecc71;
}

.btn:hover {
	opacity: 0.8;
}

.search-box {
	width: 100%;
	padding: 10px;
	border-radius: 8px;
	border: 1px solid #ccc;
	margin-bottom: 15px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 12px;
	text-align: center;
}

th {
	background: #4facfe;
	color: white;
}

tr:nth-child(even) {
	background: #f2f2f2;
}

tr:hover {
	background: #e6f2ff;
}

.checkout-btn {
	background: #e74c3c;
	padding: 8px 12px;
	border: none;
	border-radius: 6px;
	color: white;
	cursor: pointer;
}

.checkout-btn:hover {
	background: #c0392b;
}
</style>

<script>
function confirmCheckout(roomNo) {
	return confirm("Are you sure you want to checkout Room No: " + roomNo + "?");
}

function searchTable() {
	var input = document.getElementById("searchInput");
	var filter = input.value.toUpperCase();
	var table = document.getElementById("checkoutTable");
	var tr = table.getElementsByTagName("tr");

	for (var i = 1; i < tr.length; i++) {
		tr[i].style.display = "none";
		var tds = tr[i].getElementsByTagName("td");

		for (var j = 0; j < tds.length; j++) {
			if (tds[j]) {
				var txtValue = tds[j].textContent || tds[j].innerText;
				if (txtValue.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
					break;
				}
			}
		}
	}
}
</script>

</head>

<body>

	<div class="container">

		<h2>🏨 Checkout Portal</h2>

		<div class="top-bar">
			<a href="dashboard" class="btn btn-dashboard">⬅ Dashboard</a> <a
				href="guests" class="btn btn-guest">Guest Info ➡</a>
		</div>

		<input type="text" id="searchInput" class="search-box"
			onkeyup="searchTable()"
			placeholder="🔍 Search by Room No, Name, Gender...">

		<table id="checkoutTable">
			<tr>
				<th>Room No</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Action</th>
			</tr>

			<c:forEach var="b" items="${bookings}">
				<tr>
					<td>${b.roomNo}</td>
					<td>${b.name}</td>
					<td>${b.gender}</td>
					<td><a
						href="${pageContext.request.contextPath}/deleteBooking/${b.roomNo}"
						onclick="return confirmCheckout(${b.roomNo});">
							<button class="checkout-btn">Checkout</button>
					</a></td>
				</tr>
			</c:forEach>

		</table>

	</div>

</body>
</html>