
package com.BridgeLabz.AdvJava.JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private Connection connection = null;
	private static final String DBURL = "jdbc:mysql://localhost:3306/demo";
	private static final String USER = "root";
	private static final String PASS = "VIKASkumar@123";

	private static DBConnection dbConnection;

	public Connection connection() {
		try {
			connection = DriverManager.getConnection(DBURL, USER, PASS);
			System.out.println("Conection....."+connection);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;

	}

	private DBConnection() {

	}

	public static DBConnection getInstanceOfDb() {
		if (dbConnection == null) {
			synchronized (DBConnection.class) {
				if (dbConnection == null) {
					dbConnection = new DBConnection();
				}
			}
		}
		return dbConnection;

	}

}
