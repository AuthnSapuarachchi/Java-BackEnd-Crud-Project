package sliit.eventmng.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sliit.eventmng.dao.UserDAO;
import sliit.eventmng.model.User;

//@WebServlet("/AuthServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDao = new UserDAO();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			User user = new User();
			user.setUsername(request.getParameter("username"));
			user.setEmail(request.getParameter("email"));
			user.setPassword(request.getParameter("password"));

			if (userDao.registerUser(user)) {
				response.sendRedirect("login.jsp?reg=success");
			} else {
				response.sendRedirect("register.jsp?error=1");
			}
//		} else if ("login".equals(action)) {
//			
//		}
	}

}
