package com.poly.spring.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "payment")
public class PaymentEntity extends BaseEntity {
private String name;

@OneToMany(mappedBy = "payment",cascade=CascadeType.ALL)
private List<OrderEntity> order = new ArrayList<>();
public PaymentEntity() {
	super();
	// TODO Auto-generated constructor stub
}

public PaymentEntity(String name) {
	super();
	this.name = name;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

}
