<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body class="bg-light">

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-5">

				<div class="card p-4 shadow">
					<h3 class="text-center">📝 Register</h3>

					<form action="register" method="post">

						<input type="text" name="name" class="form-control mb-3"
							placeholder="Name" required> <input type="email"
							name="email" class="form-control mb-3" placeholder="Email"
							required> <input type="password" name="password"
							class="form-control mb-3" placeholder="Password" required>

						<button class="btn btn-success w-100">Register</button>

					</form>

					<div class="text-center mt-3">
						<a href="login.jsp">Already have account?</a>
					</div>

				</div>

			</div>
		</div>
	</div>

</body>
</html>