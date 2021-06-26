package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginLogic {
	private String url = "jdbc:h2:tcp://localhost/~/test";
	private String user = "test";
	private String password = "test";


	public boolean checkUser(AccountInfo account) {
		if (account.getName() == null || account.getName().length() == 0 || account.getPass() == null
				|| account.getPass().length() == 0) {
			return false;
		}

		try(Connection conn = DriverManager.getConnection(url, user, password)){
			
			String sql = "SELECT * FROM account WHERE username = ? && password = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, account.getName());
			pstmt.setString(2, account.getPass());
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
		boolean st = false;

		return st;
	}
}
