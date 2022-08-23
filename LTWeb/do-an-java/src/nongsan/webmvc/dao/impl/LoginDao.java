package nongsan.webmvc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import nongsan.webmvc.jdbc.connectDB;
import nongsan.webmvc.model.User;

public class LoginDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public User checkLogin(String username, String password) {
		User user = new User();
		String sql = "select * from users where username = ? AND password = ?";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setCreated(rs.getString("created"));
				user.setIsAdmin(rs.getInt("isAdmin"));
				user.setPublickey(rs.getString("publicKey"));
				return user;
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
        
	}
	
	public static void main(String[] args) {
		LoginDao loginDao = new LoginDao();
		System.out.println("User is:" + loginDao.checkLogin("nhatduy", "123456"));
	}
}
