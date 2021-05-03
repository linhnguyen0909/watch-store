package com.poly.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.PaymentEntity;
import com.poly.spring.repository.PaymentRepository;
import com.poly.spring.service.IPayment;

@Service
public class PaymentService implements IPayment {
	@Autowired
	private PaymentRepository paymentRepository;

	@Override
	public PaymentEntity findById(int id) {
		// TODO Auto-generated method stub
		return paymentRepository.findById(id);
	}

	@Override
	public List<PaymentEntity> findAllList(Pageable pageable) {
		// TODO Auto-generated method stub
		return paymentRepository.findAllList(pageable);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

}
