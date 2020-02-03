package com.bridgelabz.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.bridgelabz.dao.UserDao;
import com.bridgelabz.model.User;
import com.bridgelabz.util.DbConnectionProvider;

/**
 * 
 * Servlet implementation class RegisterServlets
 * 
 */
@MultipartConfig
public class RegisterServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final Logger LOGGER = Logger.getLogger(RegisterServlets.class);

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LOGGER.debug("This is Register Servlets");
		String check = request.getParameter("check");
		try {
			PrintWriter out = response.getWriter();
			if (check == null) {
				LOGGER.debug("Box is not checked ");
			} else {
				String name = request.getParameter("user_name");
				String email = request.getParameter("user_email");
				String password = request.getParameter("user_password");
				String gender = request.getParameter("gender");
				String about = request.getParameter("about");

				UserDao dao = new UserDao(DbConnectionProvider.getInstanceOfDb().connectionProvider());

				// creating user and setting it's parameter in contractor
				User user = new User(name, email, password, gender, about);
				System.out.println(about);
				if (dao.saveUser(user)) {
					out.print("done");
					LOGGER.debug("Done User save");
				} else {
					out.print("Something error");
					LOGGER.error("Something wents wrong");
				}

			}

		} catch (Exception e) {
			LOGGER.error(e);

		}
	}

}
