package com.poly.spring.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class CategoryEntity extends BaseEntity {
private String name;

@OneToMany(mappedBy = "category",cascade=CascadeType.ALL)
private List<ProductEntity> product = new ArrayList<>();

public CategoryEntity() {
	super();
}

public CategoryEntity(String name, List<ProductEntity> product) {
	super();
	this.name = name;
	this.product = product;
}



public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}


public List<ProductEntity> getProduct() {
	return product;
}

public void setProduct(List<ProductEntity> product) {
	this.product = product;
} 



}
