package com.BridgeLabz.AdvJava.JDBC;

import java.sql.*;

/**
 * Inserting data into the Database
 * 
 * @author vikash kumar
 * @version 1.1
 * @date : 21-01-2020
 *
 */
public class JdbcDemo {

	public static void main(String[] args) throws SQLException {

		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;

		String dbUrl = "jdbc:mysql://localhost:3306/demo";
		String user = "root";
		String pass = "VIKASkumar@123";

		try {
			// 1. Get a connection to database
			myConn = DriverManager.getConnection(dbUrl, user, pass);

			// 2. Create a statement
			myStmt = myConn.createStatement();

			// 3. Execute SQL query
			myRs = myStmt.executeQuery("select * from employees");

			// 4. Process the result set
			while (myRs.next()) {
				System.out.println(myRs.getString("last_name") + ", " + myRs.getString("first_name") + ", "
						+ myRs.getString("email"));
			}
		} catch (Exception exc) {
			exc.printStackTrace();
		}

	}

}
