<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #eef2f3;
}

.card {
	border-radius: 15px;
}
</style>
</head>
<body>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-4">
				<div class="card shadow p-4">

					<h3 class="text-center mb-3">🔐 Login</h3>

					<form action="login" method="post">
						<input type="email" name="email" class="form-control mb-3"
							placeholder="Email" required> <input type="password"
							name="password" class="form-control mb-3" placeholder="Password"
							required>

						<button class="btn btn-primary w-100">Login</button>
					</form>

					<div class="text-center mt-3">
						<a href="register.jsp">Create Account</a>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>