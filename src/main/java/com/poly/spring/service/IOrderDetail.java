package com.poly.spring.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.dto.OrderDetailDto;
import com.poly.spring.entities.OrderDetailEntity;

@Service
public interface IOrderDetail {
	OrderDetailEntity findById(int id);
	List<OrderDetailEntity> findAllList(Pageable pageable);
	void delete(int id);
	
	void insertByDto(OrderDetailDto dto);
}
