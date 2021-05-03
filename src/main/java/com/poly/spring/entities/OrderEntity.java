package com.poly.spring.entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class OrderEntity extends BaseEntity {
	
	private Date createAt;
	private String note;

	@OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
	private List<OrderDetailEntity> orderdetail = new ArrayList<>();

	/*
	 * @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, optional =
	 * false)
	 * 
	 * @JoinColumn(name = "statusid", nullable = false) private StatusEntity status;
	 */

	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name = "paymentid", nullable = false)
	private PaymentEntity payment;

	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name = "customerid", nullable = false)
	private CustomerEntity customer;

	public OrderEntity() {
		super();
	}

	public OrderEntity(Date createAt, String note, List<OrderDetailEntity> orderdetail) {
		super();
		this.createAt = createAt;
		this.note = note;
		this.orderdetail = orderdetail;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public List<OrderDetailEntity> getOrderdetail() {
		return orderdetail;
	}

	public void setOrderdetail(List<OrderDetailEntity> orderdetail) {
		this.orderdetail = orderdetail;
	}

}
