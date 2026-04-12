<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hotel Services</title>

<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	padding: 0;
	background: linear-gradient(to right, #f5f7fa, #c3cfe2);
	color: #333;
}

/* ✅ BACK BUTTON TOP LEFT */
.back-btn {
	position: fixed;
	top: 20px;
	left: 20px;
	padding: 10px 20px;
	background: #4a90e2;
	color: white;
	text-decoration: none;
	border-radius: 8px;
	font-weight: 600;
	z-index: 1000;
	transition: background 0.3s;
}

.back-btn:hover {
	background: #357ab7;
}

header {
	text-align: center;
	padding: 50px 20px 30px 20px;
	background: #4a90e2;
	color: white;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

header h1 {
	margin: 0;
	font-size: 2.5rem;
	letter-spacing: 1px;
}

.services-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
	gap: 20px;
	padding: 40px 20px;
	max-width: 1000px;
	margin: auto;
}

.service-card {
	background: white;
	padding: 20px;
	border-radius: 15px;
	text-align: center;
	box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s, box-shadow 0.3s;
	cursor: default;
}

.service-card:hover {
	transform: translateY(-10px);
	box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
}

.service-card i {
	font-size: 2rem;
	color: #4a90e2;
	margin-bottom: 10px;
}

.service-card p {
	margin: 0;
	font-weight: 600;
	font-size: 1.1rem;
}

@media ( max-width : 500px) {
	header h1 {
		font-size: 2rem;
	}
}
</style>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>

<body>

	<!-- ✅ BUTTON MOVED HERE -->
	<a href="dashboard" class="back-btn">⬅ Dashboard</a>

	<header>
		<h1>Our Premium Hotel Services</h1>
	</header>

	<div class="services-container">
		<div class="service-card">
			<i class="fas fa-parking"></i>
			<p>Parking</p>
		</div>
		<div class="service-card">
			<i class="fas fa-bed"></i>
			<p>AC Rooms</p>
		</div>
		<div class="service-card">
			<i class="fas fa-water"></i>
			<p>Mineral Water</p>
		</div>
		<div class="service-card">
			<i class="fas fa-swimmer"></i>
			<p>Swimming Pool</p>
		</div>
		<div class="service-card">
			<i class="fas fa-wifi"></i>
			<p>Free WiFi</p>
		</div>
		<div class="service-card">
			<i class="fas fa-concierge-bell"></i>
			<p>Room Service</p>
		</div>
		<div class="service-card">
			<i class="fas fa-tshirt"></i>
			<p>Laundry</p>
		</div>
		<div class="service-card">
			<i class="fas fa-dumbbell"></i>
			<p>Gym</p>
		</div>
		<div class="service-card">
			<i class="fas fa-utensils"></i>
			<p>Restaurant</p>
		</div>
		<div class="service-card">
			<i class="fas fa-cocktail"></i>
			<p>Bar</p>
		</div>
		<div class="service-card">
			<i class="fas fa-spa"></i>
			<p>Spa</p>
		</div>
		<div class="service-card">
			<i class="fas fa-phone-alt"></i>
			<p>24x7 Reception</p>
		</div>
		<div class="service-card">
			<i class="fas fa-shield-alt"></i>
			<p>Security</p>
		</div>
		<div class="service-card">
			<i class="fas fa-building"></i>
			<p>Conference Hall</p>
		</div>
		<div class="service-card">
			<i class="fas fa-plane-departure"></i>
			<p>Travel Desk</p>
		</div>
	</div>

</body>
</html>


<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hotel Services</title>
<style>
/* Global Styles */
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	padding: 0;
	background:
		url('https://images.unsplash.com/photo-1560347876-aeef00ee58a1?auto=format&fit=crop&w=1470&q=80')
		no-repeat center center fixed;
	background-size: cover;
	color: #fff;
}

header {
	text-align: center;
	padding: 60px 20px 40px 20px;
	background: rgba(0, 0, 0, 0.5);
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
}

header h1 {
	margin: 0;
	font-size: 3rem;
	letter-spacing: 2px;
	color: #ffd700;
	text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.6);
}

.services-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 25px;
	padding: 50px 20px;
	max-width: 1200px;
	margin: auto;
}

.service-card {
	background: rgba(255, 255, 255, 0.1);
	backdrop-filter: blur(10px);
	padding: 25px;
	border-radius: 20px;
	text-align: center;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
	transition: transform 0.5s, box-shadow 0.5s;
	cursor: default;
	border: 1px solid rgba(255, 255, 255, 0.2);
}

.service-card:hover {
	transform: translateY(-15px) scale(1.05);
	box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6);
	border-color: rgba(255, 255, 255, 0.4);
}

.service-card i {
	font-size: 3rem;
	color: #ffd700;
	margin-bottom: 15px;
}

.service-card p {
	margin: 0;
	font-weight: 600;
	font-size: 1.2rem;
	color: #fff;
	text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.7);
}

.back-btn {
	display: inline-block;
	margin: 40px auto 60px auto;
	padding: 15px 40px;
	background: rgba(255, 215, 0, 0.9);
	color: #000;
	text-decoration: none;
	border-radius: 12px;
	font-weight: 700;
	font-size: 1.1rem;
	transition: background 0.3s, transform 0.3s;
}

.back-btn:hover {
	background: #ffd700;
	transform: scale(1.1);
}

@media ( max-width : 600px) {
	header h1 {
		font-size: 2rem;
	}
	.service-card i {
		font-size: 2.5rem;
	}
	.service-card p {
		font-size: 1rem;
	}
}
</style>
<!-- Font Awesome for icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>
<body>

	<header>
		<h1>Luxury Hotel Services</h1>
	</header>

	<div class="services-container">
		<div class="service-card">
			<i class="fas fa-parking"></i>
			<p>Parking</p>
		</div>
		<div class="service-card">
			<i class="fas fa-bed"></i>
			<p>AC Rooms</p>
		</div>
		<div class="service-card">
			<i class="fas fa-water"></i>
			<p>Mineral Water</p>
		</div>
		<div class="service-card">
			<i class="fas fa-swimmer"></i>
			<p>Swimming Pool</p>
		</div>
		<div class="service-card">
			<i class="fas fa-wifi"></i>
			<p>Free WiFi</p>
		</div>
		<div class="service-card">
			<i class="fas fa-concierge-bell"></i>
			<p>Room Service</p>
		</div>
		<div class="service-card">
			<i class="fas fa-tshirt"></i>
			<p>Laundry</p>
		</div>
		<div class="service-card">
			<i class="fas fa-dumbbell"></i>
			<p>Gym</p>
		</div>
		<div class="service-card">
			<i class="fas fa-utensils"></i>
			<p>Restaurant</p>
		</div>
		<div class="service-card">
			<i class="fas fa-cocktail"></i>
			<p>Bar</p>
		</div>
		<div class="service-card">
			<i class="fas fa-spa"></i>
			<p>Spa</p>
		</div>
		<div class="service-card">
			<i class="fas fa-phone-alt"></i>
			<p>24x7 Reception</p>
		</div>
		<div class="service-card">
			<i class="fas fa-shield-alt"></i>
			<p>Security</p>
		</div>
		<div class="service-card">
			<i class="fas fa-building"></i>
			<p>Conference Hall</p>
		</div>
		<div class="service-card">
			<i class="fas fa-plane-departure"></i>
			<p>Travel Desk</p>
		</div>
	</div>

	<div style="text-align: center;">
		<a href="dashboard" class="back-btn">Back to Dashboard</a>
	</div>

</body>
</html> --%>


<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hotel Services</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	padding: 0;
	background:
		url('https://images.unsplash.com/photo-1560347876-aeef00ee58a1?auto=format&fit=crop&w=1470&q=80')
		no-repeat center center fixed;
	background-size: cover;
	color: #fff;
}

header {
	text-align: center;
	padding: 60px 20px 40px 20px;
	background: rgba(0, 0, 0, 0.5);
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
}

header h1 {
	margin: 0;
	font-size: 3rem;
	letter-spacing: 2px;
	color: #ffd700;
	text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.6);
}

.services-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 25px;
	padding: 50px 20px;
	max-width: 1200px;
	margin: auto;
}

.service-card {
	background: rgba(255, 255, 255, 0.1);
	backdrop-filter: blur(10px);
	padding: 25px;
	border-radius: 20px;
	text-align: center;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
	transition: transform 0.5s, box-shadow 0.5s;
	cursor: default;
	border: 1px solid rgba(255, 255, 255, 0.2);
}

.service-card:hover {
	transform: translateY(-15px) scale(1.05);
	box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6);
	border-color: rgba(255, 255, 255, 0.4);
}

/* Icon glow effect */
.service-card i {
	font-size: 3rem;
	color: #ffd700;
	margin-bottom: 15px;
	transition: text-shadow 0.5s, transform 0.5s;
}

.service-card:hover i {
	text-shadow: 0 0 10px #ffd700, 0 0 20px #ffd700, 0 0 30px #ffd700;
	transform: scale(1.2);
}

.service-card p {
	margin: 0;
	font-weight: 600;
	font-size: 1.2rem;
	color: #fff;
	text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.7);
}

.back-btn {
	display: inline-block;
	margin: 40px auto 60px auto;
	padding: 15px 40px;
	background: rgba(255, 215, 0, 0.9);
	color: #000;
	text-decoration: none;
	border-radius: 12px;
	font-weight: 700;
	font-size: 1.1rem;
	transition: background 0.3s, transform 0.3s;
}

.back-btn:hover {
	background: #ffd700;
	transform: scale(1.1);
}

@media ( max-width : 600px) {
	header h1 {
		font-size: 2rem;
	}
	.service-card i {
		font-size: 2.5rem;
	}
	.service-card p {
		font-size: 1rem;
	}
}
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>
<body>

	<header>
		<h1>Luxury Hotel Services</h1>
	</header>

	<div class="services-container">
		<div class="service-card">
			<i class="fas fa-parking"></i>
			<p>Parking</p>
		</div>
		<div class="service-card">
			<i class="fas fa-bed"></i>
			<p>AC Rooms</p>
		</div>
		<div class="service-card">
			<i class="fas fa-water"></i>
			<p>Mineral Water</p>
		</div>
		<div class="service-card">
			<i class="fas fa-swimmer"></i>
			<p>Swimming Pool</p>
		</div>
		<div class="service-card">
			<i class="fas fa-wifi"></i>
			<p>Free WiFi</p>
		</div>
		<div class="service-card">
			<i class="fas fa-concierge-bell"></i>
			<p>Room Service</p>
		</div>
		<div class="service-card">
			<i class="fas fa-tshirt"></i>
			<p>Laundry</p>
		</div>
		<div class="service-card">
			<i class="fas fa-dumbbell"></i>
			<p>Gym</p>
		</div>
		<div class="service-card">
			<i class="fas fa-utensils"></i>
			<p>Restaurant</p>
		</div>
		<div class="service-card">
			<i class="fas fa-cocktail"></i>
			<p>Bar</p>
		</div>
		<div class="service-card">
			<i class="fas fa-spa"></i>
			<p>Spa</p>
		</div>
		<div class="service-card">
			<i class="fas fa-phone-alt"></i>
			<p>24x7 Reception</p>
		</div>
		<div class="service-card">
			<i class="fas fa-shield-alt"></i>
			<p>Security</p>
		</div>
		<div class="service-card">
			<i class="fas fa-building"></i>
			<p>Conference Hall</p>
		</div>
		<div class="service-card">
			<i class="fas fa-plane-departure"></i>
			<p>Travel Desk</p>
		</div>
	</div>

	<div style="text-align: center;">
		<a href="dashboard" class="back-btn">Back to Dashboard</a>
	</div>

</body>
</html> --%>