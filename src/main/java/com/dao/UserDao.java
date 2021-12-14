package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dao.bean.User;

public class UserDao {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/assignment2", "root", "200186");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static User getUser(String username, String password) {
		User user = null;
		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("SELECT * FROM user WHERE username=? AND password=?");
			pst.setString(1, username);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			user = new User();
			while(rs.next()) {
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return user;
	}

}
