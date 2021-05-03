package com.poly.spring.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.ProductEntity;

@Service
public interface IProduct {
	ProductEntity findById(int id);

	List<ProductEntity> findAllList(Pageable pageable);

	void delete(int id);

	List<ProductEntity> findTop();

	List<ProductEntity> findAllByCategory(int id);

	List<ProductEntity> findTop6Product ();
	
	int getTotalItem();
	
	ProductEntity save(ProductEntity entity);
	
	void updateQuantity(Integer productId, Integer quantity);

}
