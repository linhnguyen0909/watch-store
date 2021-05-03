package com.poly.spring.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "status")
public class StatusEntity extends BaseEntity {
private String name;

/*
 * @OneToMany(mappedBy = "status",cascade=CascadeType.ALL) private
 * List<OrderEntity> orderd = new ArrayList<>();
 */
public StatusEntity() {
	super();
	// TODO Auto-generated constructor stub
}

public StatusEntity(String name) {
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
