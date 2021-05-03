package com.poly.spring.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.PaymentEntity;
@Service
public interface IPayment {
	PaymentEntity findById(int id);
	List<PaymentEntity> findAllList(Pageable pageable);
	void delete(int id);
}
