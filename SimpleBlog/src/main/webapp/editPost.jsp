<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="dao.PostDAO, model.Post"%>

<%
int id = Integer.parseInt(request.getParameter("id"));
Post p = new PostDAO().getById(id);
%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Post</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body class="bg-light">

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">

				<div class="card p-4 shadow">
					<h3>Edit Blog</h3>

					<form action="edit" method="post">

						<input type="hidden" name="id" value="<%=p.getId()%>"> <input
							type="text" name="title" value="<%=p.getTitle()%>"
							class="form-control mb-3">

						<textarea name="content" class="form-control mb-3"><%=p.getContent()%></textarea>

						<input type="text" name="tags" value="<%=p.getTags()%>"
							class="form-control mb-3">

						<button class="btn btn-primary w-100">Update</button>

					</form>

				</div>
			</div>
		</div>
	</div>

</body>
</html>