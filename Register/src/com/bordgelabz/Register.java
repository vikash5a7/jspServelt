package com.bordgelabz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bridgelab.Sql.DBConnection;

/**
 * Servlet implementation class Register
 */

public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("hiii... i'm do post");
		String userName = request.getParameter("user_name");
		String userPass = request.getParameter("user_pass");
		String userEmail = request.getParameter("user_email");
		System.out.println(userEmail);
		System.out.println(userName);
		System.out.println(userPass);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			PrintWriter out = response.getWriter();
		
			
			/*
			 * Creating manually connection with database
			 * 
			 * Connection conn = null; final String DBURL =
			 * "jdbc:mysql://localhost:3306/SignUp"; final String USER = "root"; final
			 * String PASS = "VIKASkumar@123"; conn = DriverManager.getConnection(DBURL,
			 * USER, PASS);
			 *
			 */

			
			// Established connection with database...
			
			Connection conn = DBConnection.getInstanceOfDb().connection();
			
			System.out.println("Conection....." + conn);
			String q = "insert into user(name,password,email) values(?,?,?)";
			PreparedStatement pStatements = conn.prepareStatement(q);
			pStatements.setString(1, userName);
			pStatements.setString(2, userPass);
			pStatements.setString(3, userEmail);
			pStatements.executeUpdate();
			out.println("<html><body style='background: url('img/background.jpg'); background-size: cover; background-attachment: fixed;'>");
			out.println("<h1>chal pahli Fursat Me nikal</h1>");
			out.println("<h4>Ho gaya tera registration..</h4>");
			out.println("</body></html>");
			System.out.println("Done...!");

		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Quarry.................

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

	}
}
