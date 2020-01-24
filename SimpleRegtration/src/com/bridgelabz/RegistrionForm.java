package com.bridgelabz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrionForm
 */
@WebServlet("/RegistrionForm")
public class RegistrionForm extends HttpServlet {

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h2> Welcome to Register Servlet</h2>");
		String name = request.getParameter("user_name");
		String pass = request.getParameter("user_pass");
		String email = request.getParameter("user_email");
		String gender = request.getParameter("user_gender");
		String course = request.getParameter("user_course");
		String checked = request.getParameter("checked");

		out.println("<h4>Your Name is " + name + " </h4>");
		out.println("<h4> Your password is: " + pass + " </h4>");
		out.println("<h4> Your Email is: " + email + " </h4>");
		out.println("<h4> Your Gender is: " + gender + " </h4>");
		out.println("<h4> Your Course is: " + course + " </h4>");
		out.println("<h4> Your Course is: " + checked + " </h4>");

	}

}
