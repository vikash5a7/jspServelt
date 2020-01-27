package com.bordgelabz;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bridgelab.Sql.DBConnection;

/**
 * Servlet implementation class Register
 */

@MultipartConfig
public class Register extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
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
			out.println("Sucessfully Done");
			
			System.out.println("Done.....");

		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Quarry.................

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

	}
}
