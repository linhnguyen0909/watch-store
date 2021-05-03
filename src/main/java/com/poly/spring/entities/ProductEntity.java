package com.poly.spring.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class ProductEntity extends BaseEntity {
	private String name;
	private String description;
	private String image;
	private Float price;
	private Integer quantity;
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name = "categoryid", nullable = false)
	private CategoryEntity category;

	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	private List<OrderDetailEntity> orderdetail = new ArrayList<>();

	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	private List<ReviewEntity> review = new ArrayList<>();

	public ProductEntity() {
		super();
	}

	public ProductEntity(String name, String description, String image, Float price, Integer quantity,
			CategoryEntity category, List<OrderDetailEntity> orderdetail, List<ReviewEntity> review) {
		super();
		this.name = name;
		this.description = description;
		this.image = image;
		this.price = price;
		this.quantity = quantity;
		this.category = category;
		this.orderdetail = orderdetail;
		this.review = review;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

}
