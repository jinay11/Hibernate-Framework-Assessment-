<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Blog</title>

<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
	body {
		background: #f5f7fa;
	}
	.card {
		border-radius: 15px;
	}
	.btn-custom {
		background-color: #4CAF50;
		color: white;
	}
	.btn-custom:hover {
		background-color: #45a049;
	}
</style>

</head>
<body>

<div class="container mt-5">

	<div class="row justify-content-center">
		<div class="col-md-8">

			<div class="card shadow-lg p-4">

				<h2 class="text-center mb-4">✍ Create New Blog</h2>

				<form action="post" method="post">

					<div class="mb-3">
						<label class="form-label">Title</label>
						<input type="text" name="title" class="form-control" placeholder="Enter blog title" required>
					</div>

					<div class="mb-3">
						<label class="form-label">Content</label>
						<textarea name="content" class="form-control" rows="5" placeholder="Write your blog here..." required></textarea>
					</div>

					<div class="mb-3">
						<label class="form-label">Tags</label>
						<input type="text" name="tags" class="form-control" placeholder="e.g. java, servlet, jdbc">
						<small class="text-muted">Separate tags with commas</small>
					</div>

					<div class="d-grid">
						<button type="submit" class="btn btn-custom btn-lg">🚀 Publish Post</button>
					</div>

				</form>

				<hr>

				<div class="text-center">
					<a href="dashboard.jsp" class="btn btn-outline-secondary">⬅ Back to Dashboard</a>
				</div>

			</div>

		</div>
	</div>

</div>

</body>
</html>