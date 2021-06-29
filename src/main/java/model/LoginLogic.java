package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginLogic {
	private String url = "jdbc:h2:tcp://localhost/~/testdb";
	private String user = "test";
	private String password = "test";

	public boolean checkUser(AccountInfo account) {
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			String sql = "SELECT * FROM ACCOUNT WHERE USERNAME = '" + account.getName() + "' and EMAIL = '"
					+ account.getEmail()
					+ "' and PASSWORD = '"
					+ account.getPass() + "'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			return false;
		}
	}

	public boolean addUser(AccountInfo account) {
		boolean rs = false;

		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			String sql = "INSERT INTO ACCOUNT (USERNAME, EMAIL, PASSWORD) VALUES ('" + account.getName() + "', '"
					+ account.getEmail() + "', '" + account.getPass() + "');";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			conn.commit();

		} catch (SQLException e) {
			return false;
		} finally {
			rs = true;
		}

		return rs;
	}
	
	public boolean deleteUser(AccountInfo account) {
		boolean rs = false;

		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			String sql = "DELETE FROM account WHERE USERNAME='" + account.getName() + "' AND EMAIL='"
					+ account.getEmail() + "' AND PASSWORD='" + account.getPass() + "';";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			conn.commit();

		} catch (SQLException e) {
			return false;
		} finally {
			rs = true;
		}

		return rs;
	}
}
