package com.poly.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.CustomerEntity;
import com.poly.spring.repository.CustomerRepository;
import com.poly.spring.service.ICustomer;

@Service
public class CustomerService implements ICustomer {
	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public CustomerEntity findById(int id) {
		// TODO Auto-generated method stub
		return customerRepository.findById(id);
	}

	@Override
	public List<CustomerEntity> findAllList(Pageable pageable) {
		// TODO Auto-generated method stub
		return customerRepository.findAllList(pageable);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

}
