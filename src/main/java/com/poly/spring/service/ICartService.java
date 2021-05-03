package com.poly.spring.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Pageable;

import com.poly.spring.dto.OrderDetailDto;
import com.poly.spring.dto.OrderDto;
import com.poly.spring.entities.AccountEntity;

public interface ICartService {

	OrderDto updateProduct(OrderDto orderDto, Integer productId, Integer quantity);
	OrderDto addProduct(OrderDto orderDto, Integer productId);
	void insertOrder(OrderDto orderDto);
	Integer countTotal(HashMap<Integer, OrderDetailDto> map);
	Double getTotalPrice(HashMap<Integer, OrderDetailDto> map);

}
