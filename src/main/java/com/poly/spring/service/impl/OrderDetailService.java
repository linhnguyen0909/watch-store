package com.poly.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.dto.OrderDetailDto;
import com.poly.spring.entities.OrderDetailEntity;
import com.poly.spring.repository.OrderDetailRepository;
import com.poly.spring.service.IOrderDetail;

@Service
public class OrderDetailService implements IOrderDetail {
	@Autowired
	private OrderDetailRepository orderDetailRepository;

	@Override
	public OrderDetailEntity findById(int id) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findById(id);
	}

	@Override
	public List<OrderDetailEntity> findAllList(Pageable pageable) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findAllList(pageable);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void insertByDto(OrderDetailDto dto) {
		orderDetailRepository.insertByDto(dto);
	}

	@Override
	public List<OrderDetailEntity> findAllByOrder(int id) {
		// TODO Auto-generated method stub
		return orderDetailRepository.findAllByOrder(id);
	}

}
