package com.BridgeLabz.AdvJava.JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionDeom1 {
	private Connection connection = null;
	private static final String DBURL = "jdbc:mysql://localhost:3306/demo1";
	private static final String USER = "root";
	private static final String PASS = "VIKASkumar@123";

	private static DBConnectionDeom1 dbConnection;

	public Connection connection(){
		try {
			connection = DriverManager.getConnection(DBURL, USER, PASS);
			System.out.println("DataBase Connect SuccessFully......");
		} catch (SQLException e) {
			System.out.println("DataBase in Not Connected...");
			e.printStackTrace();
		}
		return connection;
		
	}

	private DBConnectionDeom1() {

	}

	public static DBConnectionDeom1 getInstanceOfDb() {
		if (dbConnection == null) {
			synchronized (DBConnectionDeom1.class) {
				if (dbConnection == null) {
					dbConnection = new DBConnectionDeom1();
				}
			}
		}
		return dbConnection;

	}
}
