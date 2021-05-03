package com.poly.spring.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.CustomerEntity;

@Service
public interface ICustomer {
	CustomerEntity findById(int id);
	List<CustomerEntity> findAllList(Pageable pageable);
	void delete(int id);
}
