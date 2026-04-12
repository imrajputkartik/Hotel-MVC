<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.hotel.model.Booking"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guest Information</title>

<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #43cea2, #185a9d);
}

.container {
	width: 95%;
	margin: 30px auto;
	background: white;
	padding: 20px;
	border-radius: 15px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

h1 {
	text-align: center;
	color: #333;
}

/* Top bar */
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

.btn-checkout {
	background: #e67e22;
}

.btn:hover {
	opacity: 0.85;
}

/* Search */
.search-box {
	width: 100%;
	padding: 10px;
	border-radius: 8px;
	border: 1px solid #ccc;
	margin-bottom: 15px;
}

/* Table */
table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
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

/* Empty message */
.empty {
	text-align: center;
	color: red;
	font-weight: bold;
}
</style>

<script>
	function searchTable() {
		var input = document.getElementById("searchInput");
		var filter = input.value.toUpperCase();
		var table = document.getElementById("guestTable");
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

		<h1>👥 Guest Information</h1>

		<div class="top-bar">
			<a href="dashboard" class="btn btn-dashboard">⬅ Dashboard</a> <a
				href="checkout" class="btn btn-checkout">Checkout Portal ➡</a>
		</div>

		<input type="text" id="searchInput" class="search-box"
			onkeyup="searchTable()" placeholder="🔍 Search Guest Details...">

		<table id="guestTable">

			<tr>
				<th>Room No</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Members</th>
				<th>Address</th>
				<th>State</th>
				<th>Nationality</th>
				<th>Adhar No</th>
				<th>Mobile</th>
				<th>Check In</th>
				<th>Check Out</th>
			</tr>

			<%
			List<Booking> list = (List<Booking>) request.getAttribute("bookings");

			if (list != null && !list.isEmpty()) {
				for (Booking b : list) {
			%>

			<tr>
				<td><%=b.getRoomNo()%></td>
				<td><%=b.getName()%></td>
				<td><%=b.getGender()%></td>
				<td><%=b.getMembers()%></td>
				<td><%=b.getAddress()%></td>
				<td><%=b.getState()%></td>
				<td><%=b.getNationality()%></td>
				<td><%=b.getAdharNo()%></td>
				<td><%=b.getMobile()%></td>
				<td><%=b.getCheckIn()%></td>
				<td><%=b.getCheckOut()%></td>
			</tr>

			<%
			}
			} else {
			%>

			<tr>
				<td colspan="11" class="empty">No Guest Data Available</td>
			</tr>

			<%
			}
			%>

		</table>

	</div>

</body>
</html>