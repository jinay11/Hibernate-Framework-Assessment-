package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PostDAO;
import model.Post;
import model.User;

@WebServlet("/post")
public class PostServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");

		Post p = new Post();
		p.setTitle(req.getParameter("title"));
		p.setContent(req.getParameter("content"));
		p.setTags(req.getParameter("tags"));
		p.setUserId(user.getId());

		new PostDAO().create(p);

		resp.sendRedirect("dashboard.jsp");
	}

}
