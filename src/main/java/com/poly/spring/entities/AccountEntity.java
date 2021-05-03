package com.poly.spring.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "account")
public class AccountEntity extends BaseEntity {
	private String fullname;
	private String email;
	private String password;
	private String address;
	private String image;
	private String phoneNumber;
	private Date birthday;
	private int role;

	public AccountEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AccountEntity(String fullname, String email, String password, String address, String image,
			String phoneNumber, Date birthday, int role) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.password = password;
		this.address = address;
		this.image = image;
		this.phoneNumber = phoneNumber;
		this.birthday = birthday;
		this.role = role;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

}
