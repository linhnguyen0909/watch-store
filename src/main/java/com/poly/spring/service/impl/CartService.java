package com.poly.spring.service.impl;

import java.sql.Timestamp;
import java.util.HashMap;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import com.poly.spring.dto.OrderDetailDto;
import com.poly.spring.dto.OrderDto;
import com.poly.spring.dto.OrderLatestDto;
import com.poly.spring.entities.ProductEntity;
import com.poly.spring.service.ICartService;
import com.poly.spring.service.IOrder;
import com.poly.spring.service.IOrderDetail;
import com.poly.spring.service.IProduct;

@Service
public class CartService implements ICartService {
	
	@Autowired
	private IOrder orderService;
	
	@Autowired
	private IOrderDetail orderDetailService;
	
	@Autowired
	private IProduct productService;

	@Override
	public OrderDto updateProduct(OrderDto orderDto, Integer productId, Integer quantity) {
		ProductEntity product = productService.findById(productId);
		
		if (product.getQuantity() >= quantity) {
			if (orderDto.getListDetail().containsKey(productId)) {
				if (quantity < 1) {
					orderDto.getListDetail().remove(productId);
				} else {
					orderDto.getListDetail().get(productId).setQuantity(quantity);
					Float newTotalPrice = quantity * product.getPrice();
					orderDto.getListDetail().get(productId).setTotalPrice(newTotalPrice);
				}
			} else {
				OrderDetailDto newOrderDetail = new OrderDetailDto();
				newOrderDetail.setName(product.getName());
				newOrderDetail.setItemPrice(product.getPrice());
				newOrderDetail.setProductId(productId);
				newOrderDetail.setQuantity(1);
				orderDto.getListDetail().get(productId).setTotalPrice(product.getPrice());
				orderDto.getListDetail().put(productId, newOrderDetail);
			}
		}
		
		return orderDto;
	}

	@Override
	@Transactional
	public void insertOrder(OrderDto orderDto) {
		orderDto.setCreateDate(new Timestamp(System.currentTimeMillis()));
		orderDto.setNote("empty note");
		orderDto.setPaymentTypeId(1); // tam thoi set nhu vay, co data thi set lai sau
		orderDto.setStatus(1);
		
		orderService.insertByDto(orderDto);
		
		OrderLatestDto orderEntity = orderService.findLatestId();
		System.out.println("aaaaaaaaaaaaaaaa: " + orderEntity.getMaxId());
		
		if (!ObjectUtils.isEmpty(orderEntity)) {
			for (OrderDetailDto orderDetailDto : orderDto.getListDetail().values()) {
				ProductEntity product = productService.findById(orderDetailDto.getProductId());
				
				OrderDetailDto newOrderDetail = new OrderDetailDto();
				newOrderDetail.setCreateDate(new Timestamp(System.currentTimeMillis()));
				newOrderDetail.setItemPrice(product.getPrice());
				newOrderDetail.setOrderId(orderEntity.getMaxId());
				newOrderDetail.setProductId(product.getId());
				newOrderDetail.setQuantity(orderDetailDto.getQuantity());
				newOrderDetail.setShippingPrice(0F);
				newOrderDetail.setStatus(1);
				newOrderDetail.setTaxPrice(0F);
				Float totalPrice = orderDetailDto.getQuantity() * product.getPrice();
				newOrderDetail.setTotalPrice(totalPrice);
				
				orderDetailService.insertByDto(newOrderDetail);
				
				Integer newQuantityProd = product.getQuantity() - orderDetailDto.getQuantity();
				productService.updateQuantity(product.getId(), newQuantityProd);
			}
		}
	}

	@Override
	public Integer countTotal(HashMap<Integer, OrderDetailDto> map) {
		Integer total = 0;
		for (OrderDetailDto orderDetail : map.values()) {
			total += orderDetail.getQuantity();
		}
		return total;
	}

	@Override
	public Double getTotalPrice(HashMap<Integer, OrderDetailDto> map) {
		Double totalPrice = 0D;
		if (map.size() > 0) {
			for (OrderDetailDto orderDetailDto : map.values()) {
				ProductEntity product = productService.findById(orderDetailDto.getProductId());
				
				totalPrice += product.getPrice() * orderDetailDto.getQuantity();
			}
		}
		return totalPrice;
	}

	@Override
	public OrderDto addProduct(OrderDto orderDto, Integer productId) {
		ProductEntity product = productService.findById(productId);
		
		if (orderDto.getListDetail().containsKey(productId)) {
			Integer oldQtt = orderDto.getListDetail().get(productId).getQuantity(); 
			orderDto.getListDetail().get(productId).setQuantity(oldQtt+1);
			Float newTotalPrice = (oldQtt+1) * product.getPrice();
			orderDto.getListDetail().get(productId).setTotalPrice(newTotalPrice);
		} else {
			OrderDetailDto newOrderDetail = new OrderDetailDto();
			newOrderDetail.setName(product.getName());
			newOrderDetail.setItemPrice(product.getPrice());
			newOrderDetail.setProductId(productId);
			newOrderDetail.setQuantity(1);
			newOrderDetail.setTotalPrice(product.getPrice());
			orderDto.getListDetail().put(productId, newOrderDetail);
		}
		
		return orderDto;
	}

}
