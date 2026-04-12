<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Inter', 'Segoe UI', sans-serif;
}

body {
	height: 100vh;
	background: #eef2f7;
	display: flex;
	align-items: center;
	justify-content: center;
}

/* Main Card */
.login-wrapper {
	display: flex;
	width: 850px;
	height: 480px;
	background: #fff;
	border-radius: 16px;
	box-shadow: 0 20px 50px rgba(0, 0, 0, 0.1);
	overflow: hidden;
}

/* LEFT SIDE */
.left-panel {
	width: 50%;
	background: #1f2937;
	color: white;
	display: flex;
	flex-direction: column;
	justify-content: center;
	padding: 40px;
}

.left-panel h1 {
	font-size: 32px;
	margin-bottom: 15px;
}

.left-panel p {
	color: #cbd5e1;
	font-size: 14px;
	line-height: 1.6;
}

/* RIGHT SIDE */
.right-panel {
	width: 50%;
	padding: 50px 40px;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.right-panel h2 {
	margin-bottom: 25px;
	color: #111827;
}

/* Input */
.input-group {
	margin-bottom: 18px;
}

.input-group label {
	font-size: 13px;
	color: #6b7280;
}

.input-group input {
	width: 100%;
	padding: 10px;
	margin-top: 5px;
	border: 1px solid #d1d5db;
	border-radius: 8px;
	outline: none;
	transition: 0.2s;
}

.input-group input:focus {
	border-color: #2563eb;
	box-shadow: 0 0 0 2px rgba(37, 99, 235, 0.2);
}

/* Button */
.login-btn {
	width: 100%;
	padding: 12px;
	background: #2563eb;
	color: white;
	border: none;
	border-radius: 8px;
	font-size: 15px;
	cursor: pointer;
	transition: 0.3s;
}

.login-btn:hover {
	background: #1e40af;
}

/* Error */
.error {
	margin-top: 12px;
	color: #dc2626;
	font-size: 13px;
}

/* Footer */
.footer {
	margin-top: 25px;
	font-size: 12px;
	color: #9ca3af;
	text-align: center;
}

/* Responsive */
@media ( max-width : 768px) {
	.login-wrapper {
		flex-direction: column;
		width: 90%;
		height: auto;
	}
	.left-panel {
		display: none;
	}
	.right-panel {
		width: 100%;
	}
}
</style>

</head>

<body>

	<div class="login-wrapper">

		<!-- LEFT PANEL -->
		<div class="left-panel">
			<h1>🏨 Hotel System</h1>
			<p>Manage bookings, rooms, and guests with a powerful dashboard.
				Designed for real-world hotel management.</p>
		</div>

		<!-- RIGHT PANEL -->
		<div class="right-panel">

			<h2>Login to your account</h2>

			<!-- ✅ AUTOFILL OFF -->
			<form action="doLogin" method="post" autocomplete="off">

				<!-- 🔥 Fake fields (browser trick) -->
				<input type="text" name="fakeuser" style="display: none"> <input
					type="password" name="fakepass" style="display: none">

				<div class="input-group">
					<label>Username</label> <input type="text" name="username" required
						autocomplete="off">
				</div>

				<div class="input-group">
					<label>Password</label> <input type="password" name="password"
						required autocomplete="new-password">
				</div>

				<button type="submit" class="login-btn">Sign In</button>

			</form>

			<div class="error">${error}</div>

			<div class="footer">© 2026 Hotel Management System</div>

		</div>

	</div>

</body>
</html>