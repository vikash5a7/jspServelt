/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bridgelabz.service;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.bridgelabz.model.Message;

/**
 *
 * @author vikash kumar
 */
public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = -4640444441703845486L;
	static final Logger LOGGER = Logger.getLogger(LogoutServlet.class);
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {

			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet LogoutServlet</title>");
			out.println("</head>");
			out.println("<body>");

			HttpSession s = request.getSession();

			s.removeAttribute("currentUser");

			Message m = new Message("Logout Successfully", "success", "alert-success");
			LOGGER.debug("SucessFully Logout");

			s.setAttribute("msg", m);

			response.sendRedirect("login_page.jsp");

			out.println("</body>");
			out.println("</html>");
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
