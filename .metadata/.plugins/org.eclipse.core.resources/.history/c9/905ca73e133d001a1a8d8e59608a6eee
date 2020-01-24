package com.BridgeLabz.AdvJava.JDBC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StoredProcedure {
	public static void main(String[] args) {
		try {

			Connection myConnection = DBConnectionDeom1.getInstanceOfDb().connection();
			Statement createStatement = myConnection.createStatement();
			ResultSet executeQuery = createStatement.executeQuery("select * from employees");
			while (executeQuery.next()) {
				System.out.println(executeQuery.getString("first_name"));

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
