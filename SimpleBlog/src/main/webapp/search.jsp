<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="java.util.*, model.Post"%>

<!DOCTYPE html>
<html>
<head>
<title>Search</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<div class="container mt-4">

		<h3>🔍 Search Results</h3>
		<a href="dashboard.jsp" class="btn btn-secondary mb-3">Back</a>

		<%
		List<Post> list = (List<Post>) request.getAttribute("posts");

		for (Post p : list) {
		%>

		<div class="card mb-3 shadow-sm">
			<div class="card-body">
				<h5><%=p.getTitle()%></h5>
				<p><%=p.getContent()%></p>
				<span class="badge bg-info"><%=p.getTags()%></span>
			</div>
		</div>

		<%
		}
		%>

	</div>

</body>
</html>