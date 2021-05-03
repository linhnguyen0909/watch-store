package com.poly.spring.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "review")
public class ReviewEntity extends BaseEntity {
private Integer numReview;
private String content;
@ManyToOne(fetch = FetchType.LAZY, cascade=CascadeType.ALL, optional = false) 
@JoinColumn(name = "customerid", nullable = false)
private CustomerEntity customer;

@ManyToOne(fetch = FetchType.LAZY, cascade=CascadeType.ALL, optional = false) 
@JoinColumn(name = "productid", nullable = false)
private ProductEntity product;
public ReviewEntity() {
	super();
	// TODO Auto-generated constructor stub
}

public ReviewEntity(Integer numReview, String content) {
	super();
	this.numReview = numReview;
	this.content = content;
}

public int getNumReview() {
	return numReview;
}
public void setNumReview(int numReview) {
	this.numReview = numReview;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}

}
