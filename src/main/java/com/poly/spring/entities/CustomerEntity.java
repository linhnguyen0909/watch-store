package com.poly.spring.entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class CustomerEntity extends BaseEntity {
	private String name;
	private String password;
	private String email;
	private String adsress;
	private String gender;
	private Date birthday;
	private String phoneNumber;

	@OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
	private List<OrderEntity> order = new ArrayList<>();

	@OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
	private List<ReviewEntity> review = new ArrayList<>();

	public CustomerEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CustomerEntity(String name, String password, String email, String adsress, String gender, Date birthday,
			String phoneNumber, List<OrderEntity> order, List<ReviewEntity> review) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.adsress = adsress;
		this.gender = gender;
		this.birthday = birthday;
		this.phoneNumber = phoneNumber;
		this.order = order;
		this.review = review;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAdsress() {
		return adsress;
	}

	public void setAdsress(String adsress) {
		this.adsress = adsress;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
