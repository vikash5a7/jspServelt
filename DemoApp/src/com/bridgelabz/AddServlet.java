package com.bridgelabz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/add")
public class AddServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
			int i = Integer.parseInt(req.getParameter("num1"));
			int j = Integer.parseInt(req.getParameter("num2"));
			int k = i + j;

			
			
			
//			 req.setAttribute("k", k);
//			 
//			 //			request Dispatcher......
//			 
//			 RequestDispatcher rd = req.getRequestDispatcher("sq"); rd.forward(req, res);
			
	
			//URL ReWritting 
			// Redirecting to another URL (sqL)
			// res.sendRedirect("sq?k="+k);
	
			
			/*
			 * // Passing the value in session and redirect to square HttpSession
			 * httpSession = req.getSession(); httpSession.setAttribute("k", k);
			 * res.sendRedirect("sq");
			 */
			
			Cookie cookie= new Cookie("k", k+"");
			res.addCookie(cookie);
			res.sendRedirect("sq");
			System.out.println("add : " +k);
			
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

}
