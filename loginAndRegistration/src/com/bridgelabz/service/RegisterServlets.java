package com.bridgelabz.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("this is register servlets");
		String check = request.getParameter("check");
		try {
			PrintWriter out = response.getWriter();
			if (check == null) {
				out.println("box is not check");
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
				} else {
					out.print("Something error");
				}

			}

		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}
