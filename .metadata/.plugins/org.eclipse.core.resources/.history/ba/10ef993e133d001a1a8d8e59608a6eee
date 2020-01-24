package com.BridgeLabz.AdvJava.JDBC;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;

/**
 * Test calling stored procedure with OUT parameters
 * 
 * @author vikash kumar
 *
 */
public class GetCountForDepartment {

	public static void main(String[] args) throws Exception {

		Connection myConn = null;
		CallableStatement myStmt = null;

		try {
			// Get a connection to database
			myConn = DBConnectionDeom1.getInstanceOfDb().connection();

			String theDepartment = "Legal";
			
			// Prepare the stored procedure call
			myStmt = myConn
					.prepareCall("{call get_count_for_department(?, ?)}");

			// Set the parameters
			myStmt.setString(1, theDepartment);
			myStmt.registerOutParameter(2, Types.INTEGER);
			
			// Call stored procedure
			System.out.println("Calling stored procedure.  get_count_for_department('" + theDepartment + "', ?)");
			myStmt.execute();
			System.out.println("Finished calling stored procedure");			
			
			// Get the value of the OUT parameter
			int theCount = myStmt.getInt(2);
			
			System.out.println("\nThe count = " + theCount);

		} catch (Exception exc) {
			exc.printStackTrace();
		} finally {
			close(myConn, myStmt);
		}
	}

	private static void close(Connection myConn, Statement myStmt) throws SQLException {
		if (myStmt != null) {
			myStmt.close();
		}

		if (myConn != null) {
			myConn.close();
		}
	}	
}
