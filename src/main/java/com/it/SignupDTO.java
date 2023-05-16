package com.it;

import java.sql.Timestamp;

public class SignupDTO {

	private int pid;
	String username;
	String password;
	String mobile;
	String email;
	String address;
	private Timestamp doe;
	
	public SignupDTO() {}

	public SignupDTO(String username, String password, String mobile, String email, String address) {
		super();
		this.username = username;
		this.password = password;
		this.mobile = mobile;
		this.email = email;
		this.address = address;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public Timestamp getDoe() {
		return doe;
	}

	public void setDoe(Timestamp doe) {
		this.doe = doe;
	}

	@Override
	public String toString() {
		return "SignupDTO [username=" + username + ", password=" + password + ", mobile=" + mobile + ", email=" + email
				+ ", address=" + address + "]";
	}

}
