package com.bridgelabz.util;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnectionProvider {
	private Connection connection = null;
	private static final String DBURL = "jdbc:mysql://localhost:3306/vicky";
	private static final String USER = "root";
	private static final String PASS = "VIKASkumar@123";

	private static DbConnectionProvider dbConnection;

	public Connection connectionProvider(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(DBURL, USER, PASS);
			DatabaseMetaData metaData = connection.getMetaData();
			System.out.println("DataBase Connect SuccessFully......");
			System.out.println("Version:- " +metaData.getDatabaseProductVersion());
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("DataBase in Not Connected...");
			e.printStackTrace();
		}
		return connection;
		
	}

	private DbConnectionProvider() {

	}

	public static DbConnectionProvider getInstanceOfDb() {
		if (dbConnection == null) {
			synchronized (DbConnectionProvider.class) {
				if (dbConnection == null) {
					dbConnection = new DbConnectionProvider();
				}
			}
		}
		return dbConnection;

	}
}
