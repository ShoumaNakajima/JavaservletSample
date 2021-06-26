package model;

public class AccountInfo {
	private String username;
	private String email;
	private String password;
	
	public AccountInfo() {
		
	}
	
	public AccountInfo(String username, String password) {
		this.username = username;
//		this.email = null;
		this.password = password;
	}
	
	public AccountInfo(String username, String email, String password) {
		this.username = username;
		this.email = email;
		this.password = password;
	}
	
	public String getName() {
		return username;
	}
	
	public String getEmail() {
		return email;
	}
	
	
	public String getPass() {
		return password;
	}
}
