package com.bridgelabz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sq")
public class SquareServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			
			PrintWriter out = response.getWriter();

			
			
			
			// getting the value from the request parameter
			/*
			 * 
			 * int k = (int) request.getAttribute("k");
			 * 
			 * 
			 * PrintWriter out = response.getWriter();
			 * out.println("Addition of two Number "+k); out.println("Square "+ (k*k));
			 * 
			 */
			
			
			
			
			// Receiving Data from the URL
			// int k = Integer.parseInt(request.getParameter("k"));
			// out.println("Reult is : "+(k*k));
			
			
			/*
			 * // Session-------- System.out.println("Session.."); HttpSession httpSession =
			 * request.getSession(); // Getting value from the session int k = (int)
			 * httpSession.getAttribute("k"); out.println("Reult is : "+(k*k));
			 * httpSession.removeAttribute("k");
			 */
			int k = 0;
			Cookie[] cookies = request.getCookies();
			for (Cookie cookie : cookies) {
				if(cookie.getName().equals("k"))
					{
						k = Integer.parseInt(cookie.getValue());
					}
			}
			System.out.println("result= " +(k*k));
			out.print("result= " +(k*k));
			System.out.println("Hi");
		} catch (Exception e) {
			e.printStackTrace();

		}

	}
}
