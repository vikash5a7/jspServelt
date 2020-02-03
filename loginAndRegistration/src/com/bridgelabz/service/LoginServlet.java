package com.bridgelabz.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.bridgelabz.dao.UserDao;
import com.bridgelabz.model.Message;
import com.bridgelabz.model.User;
import com.bridgelabz.util.DbConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static final Logger LOGGER = Logger.getLogger(LoginServlet.class);
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Login servlets");
		String userEmail = request.getParameter("email");
		String userPassword = request.getParameter("password");
		System.out.println(userEmail + " " + userPassword);
		
		UserDao dao = new UserDao(DbConnectionProvider.getInstanceOfDb().connectionProvider());
		User user = dao.getUserByEmailAndPassword(userEmail, userPassword);

		try {
			if (user == null) {
				// not valid or password incorrect
				Message msg = new Message("Invalid Details! try with another", "error", "alert-danger");
				LOGGER.warn("Invalide password");
				response.sendRedirect("login_page.jsp");
				HttpSession session = request.getSession();
				session.setAttribute("msg", msg);
				

			} else {
				HttpSession s = request.getSession();
				s.setAttribute("currentUser", user);
				response.sendRedirect("profile.jsp");
				LOGGER.debug("sucessfull Loging with  " +user.getName());
			}

		} catch (Exception e) {
			LOGGER.warn(e);
		}

	}

}
