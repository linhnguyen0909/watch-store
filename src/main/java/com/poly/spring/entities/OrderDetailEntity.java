package com.poly.spring.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orderdetail")
public class OrderDetailEntity extends BaseEntity {
	
	private Float itemPrice;
	private Float shippingPrice;
	private Float taxPrice;
	private Float totalPrice;
	private Integer quantity;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name = "productid", nullable = false)
	private ProductEntity product;

	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name = "orderid", nullable = false)
	private OrderEntity order;

	public OrderDetailEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderDetailEntity(Float itemPrice, Float shippingPrice, Float taxPrice, Float totalPrice, Integer quantity,
			ProductEntity product, OrderEntity order) {
		super();
		this.itemPrice = itemPrice;
		this.shippingPrice = shippingPrice;
		this.taxPrice = taxPrice;
		this.totalPrice = totalPrice;
		this.quantity = quantity;
		this.product = product;
		this.order = order;
	}



	public Float getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(Float itemPrice) {
		this.itemPrice = itemPrice;
	}

	public Float getShippingPrice() {
		return shippingPrice;
	}

	public void setShippingPrice(Float shippingPrice) {
		this.shippingPrice = shippingPrice;
	}

	public Float getTaxPrice() {
		return taxPrice;
	}

	public void setTaxPrice(Float taxPrice) {
		this.taxPrice = taxPrice;
	}

	public Float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public ProductEntity getProduct() {
		return product;
	}

	public void setProduct(ProductEntity product) {
		this.product = product;
	}

	public OrderEntity getOrder() {
		return order;
	}

	public void setOrder(OrderEntity order) {
		this.order = order;
	}
}
