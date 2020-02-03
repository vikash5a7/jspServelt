package com.bridgelabz.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.bridgelabz.config.DBconfig;

public class DbConnectionProvider {
	private Connection connection = null;

	private static DbConnectionProvider dbConnection;
	static final Logger LOGGER = Logger.getLogger(DbConnectionProvider.class);

	// providing connection
	public Connection connectionProvider() {
		try {
			Class.forName(DBconfig.getDriverName());
			connection = DriverManager.getConnection(DBconfig.getDatabaseUrl(), DBconfig.getDatabseUserName(),
					DBconfig.getDatabasePassword());
			LOGGER.debug("Succefully Connected to database");
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;

	}

	private DbConnectionProvider() {

	}

	// providing instance of this class
	public static DbConnectionProvider getInstanceOfDb() {
		synchronized (DbConnectionProvider.class) {
			if (dbConnection == null) {
				dbConnection = new DbConnectionProvider();
			}
		}
		return dbConnection;

	}
}
