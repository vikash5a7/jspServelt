package com.bridgelabz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class AddServlet extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
			int i = Integer.parseInt(req.getParameter("num1"));
			int j = Integer.parseInt(req.getParameter("num2"));
			int k = i + j;
			req.setAttribute("k", k);
			

			// request Dispatcher......

			RequestDispatcher rd = req.getRequestDispatcher("sq");
			rd.forward(req, res);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}

}
