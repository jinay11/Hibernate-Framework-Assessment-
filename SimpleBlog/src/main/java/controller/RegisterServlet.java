package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import model.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	 protected void doPost(HttpServletRequest req, HttpServletResponse res)
	            throws ServletException, IOException {

	        User u = new User();
	        u.setName(req.getParameter("name"));
	        u.setEmail(req.getParameter("email"));
	        u.setPassword(req.getParameter("password"));

	        if (new UserDAO().register(u)) {
	            res.sendRedirect("login.jsp");
	        } else {
	            res.getWriter().println("Registration Failed");
	        }
	    }
	
}