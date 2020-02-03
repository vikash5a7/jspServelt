package com.bridgelabz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bridgelabz.config.DBconfig;
import com.bridgelabz.model.User;

public class UserDao {

	private Connection con;

	// constructor using
	public UserDao(Connection con) {
		this.con = con;
	}

	// method to insert the user..

	public boolean saveUser(User user) {
		boolean f = false;

		try {

			PreparedStatement ptmStatements = this.con.prepareStatement(DBconfig.getQuerry());
			ptmStatements.setString(1, user.getName());
			ptmStatements.setString(2, user.getEmail());
			ptmStatements.setString(3, user.getPassword());
			ptmStatements.setString(4, user.getGender());
			ptmStatements.setString(5, user.getUserInfo());

			ptmStatements.executeUpdate();
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;

	}

	// get user by email and pssword
	public User getUserByEmailAndPassword(String email, String password) {
		User user = null;
		try {
			String q = "select * from user where email=? and password=? ";
			PreparedStatement pts = con.prepareStatement(q);
			pts.setString(1, email);
			pts.setString(2, password);
			ResultSet set = pts.executeQuery();
			if (set.next()) {
				user = new User();
				user.setId(set.getInt("id"));
				user.setName(set.getString("name"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setGender(set.getString("gender"));
				user.setUserInfo(set.getString("userInfo"));
				user.setPic(set.getString("pPic"));
				user.setDateTime(set.getTimestamp("rdate"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;

	}

}
