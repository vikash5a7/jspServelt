package com.bridgelabz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bridgelabz.model.User;

public class UserDao {

	private Connection con;

	// constructor using
	public UserDao(Connection con) {
		super();
		this.con = con;
	}

	// method to insert the user..

	public boolean saveUser(User user) {
		boolean f = false;

		try {
			// user databse
			String querry = "insert into user(name,email,password, gender, about) values(?,?,?,?,?)";
			PreparedStatement ptmStatements = this.con.prepareStatement(querry);
			ptmStatements.setString(1, user.getName());
			ptmStatements.setString(2, user.getEmail());
			ptmStatements.setString(3, user.getPassword());
			ptmStatements.setString(4, user.getGender());
			ptmStatements.setString(5, user.getAbout());

			ptmStatements.executeUpdate();
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;

	}

}
