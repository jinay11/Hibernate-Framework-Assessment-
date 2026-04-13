<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="java.util.*, dao.PostDAO, model.Post" %>

<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-dark bg-dark px-3">
	<span class="navbar-brand">SimpleBlog</span>
	<a href="logout" class="btn btn-danger">Logout</a>
</nav>

<div class="container mt-4">

<div class="d-flex justify-content-between mb-3">
	<a href="createPost.jsp" class="btn btn-success">➕ New Post</a>

	<form action="search" method="get" class="d-flex">
		<input type="text" name="keyword" class="form-control me-2" placeholder="Search...">
		<button class="btn btn-primary">Search</button>
	</form>
</div>

<div class="row">

<%
PostDAO dao = new PostDAO();
List<Post> list = dao.getAll();

for(Post p : list){
%>

<div class="col-md-4 mb-4">
	<div class="card shadow-sm h-100">

		<div class="card-body">
			<h5><%= p.getTitle() %></h5>
			<p><%= p.getContent() %></p>
			<span class="badge bg-secondary"><%= p.getTags() %></span>
		</div>

		<div class="card-footer d-flex justify-content-between">
			<a href="editPost.jsp?id=<%=p.getId()%>" class="btn btn-warning btn-sm">Edit</a>
			<a href="delete?id=<%=p.getId()%>" class="btn btn-danger btn-sm">Delete</a>
		</div>

	</div>
</div>

<% } %>

</div>
</div>

</body>
</html>