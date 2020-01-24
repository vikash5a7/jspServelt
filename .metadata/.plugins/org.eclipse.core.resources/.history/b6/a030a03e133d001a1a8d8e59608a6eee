/**
 * Retrieving all the data from the Database
 * 
 * @author vikash kumar
 * @version 1.1
 * @date : 21-01-2020
*/
package com.BridgeLabz.AdvJava.JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class InsertInToDatbase {
	static Connection CONNECTION = null;
	static Statement MYSTATEMENTS = null;
	static ResultSet MYRESULTS = null;

	static String dbUrl = "jdbc:mysql://localhost:3306/demo";
	static String user = "root";
	static String pass = "VIKASkumar@123";

	public static void main(String[] args) {

		try {
			// 1. Get a connection to database
			CONNECTION = DriverManager.getConnection(dbUrl, user, pass);

			// 2. Create a statement
			MYSTATEMENTS = CONNECTION.createStatement();

			// 3. Insert a new employee
			System.out.println("Inserting a new employee to database\n");

			int rowsAffected = MYSTATEMENTS
					.executeUpdate("insert into employees " + "(last_name, first_name, email, department, salary) "
							+ "values " + "('Wright', 'Eric', 'eric.wright@foo.com', 'HR', 33000.00)");

			// 4. Verify this by getting a list of employees
			MYRESULTS = MYSTATEMENTS.executeQuery("select * from employees order by last_name");
			System.out.println("Number of Rows are Effected: " + rowsAffected);

			// 5. Process the result set
			while (MYRESULTS.next()) {
				System.out.println(MYRESULTS.getString("last_name") + ", " + MYRESULTS.getString("first_name"));
			
			}
		} catch (Exception exc) {
			exc.printStackTrace();
		} 
		
	}
}
