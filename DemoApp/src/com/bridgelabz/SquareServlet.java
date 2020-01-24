package com.bridgelabz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SquareServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			
			// getting the value from the request parameter
			int k = (int) request.getAttribute("k");
			
			
			PrintWriter out = response.getWriter();
			out.println("Addition of two Number "+k);
			out.println("Square "+ (k*k));
		} catch (Exception e) {
			
		}

	}
}
