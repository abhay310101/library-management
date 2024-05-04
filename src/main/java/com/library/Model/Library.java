package com.library.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Library {
	
	@Id
	private int id;
	private String name;
	private String email_address;
	private String password;
	private String mobile_number;
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail_address() {
		return email_address;
	}
	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Library [id=" + id + ", name=" + name + ", email_address=" + email_address + ", password=" + password
				+ ", mobile_number=" + mobile_number + "]";
	}
	

}
