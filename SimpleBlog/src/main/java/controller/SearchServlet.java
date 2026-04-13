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

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String keyword = req.getParameter("keyword");

		PostDAO dao = new PostDAO();
		req.setAttribute("posts", dao.search(keyword));

		req.getRequestDispatcher("search.jsp").forward(req, res);
	}

}
