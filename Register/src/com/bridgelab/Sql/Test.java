package com.bridgelab.Sql;

import java.sql.Connection;
import java.sql.SQLException;

public class Test {
public static void main(String[] args) {
	try {
		Connection connection = DBConnection.getInstanceOfDb().connection();
		System.out.println(connection);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
}
