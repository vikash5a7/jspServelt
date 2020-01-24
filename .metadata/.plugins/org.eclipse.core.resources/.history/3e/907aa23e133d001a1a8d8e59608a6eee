package com.BridgeLabz.AdvJava.JDBC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Test {
	public static void main(String[] args) throws SQLException {
		Connection connection = DBConnection.getInstanceOfDb().connection();
		try {
			Statement myStatements = connection.createStatement();
			int rowsAffected = myStatements
					.executeUpdate("insert into employees " + "(last_name, first_name, email, department, salary) "
							+ "values " + "('Wright', 'Eric', 'eric.wright@foo.com', 'HR', 33000.00)");

			// 4. Verify this by getting a list of employees
			ResultSet executeQuery = myStatements.executeQuery("select * from employees order by last_name");
			System.out.println("Number of Rows are Effected: " + rowsAffected);

			// 5. Process the result set
			while (executeQuery.next()) {
				System.out.println(executeQuery.getString("last_name") + ", " + executeQuery.getString("first_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
