package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PostDAO;
import model.Post;

@WebServlet("/edit")
public class editServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		Post p = new Post();
		p.setId(Integer.parseInt(req.getParameter("id")));
		p.setTitle(req.getParameter("title"));
		p.setContent(req.getParameter("content"));
		p.setTags(req.getParameter("tags"));

		new PostDAO().update(p);

		res.sendRedirect("dashboard.jsp");
	}

}
