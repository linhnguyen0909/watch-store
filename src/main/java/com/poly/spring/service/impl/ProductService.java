package com.poly.spring.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.CategoryEntity;
import com.poly.spring.entities.ProductEntity;
import com.poly.spring.repository.CategoryRepository;
import com.poly.spring.repository.ProductRepository;
import com.poly.spring.service.IProduct;

@Service
public class ProductService implements IProduct {

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public List<ProductEntity> findAllList(Pageable pageable) {
		return productRepository.findAll(pageable).getContent();
	}

	@Override
	public List<ProductEntity> findTop6Product() {
		return productRepository.findTop6Product();
	}

	@Override
	public ProductEntity findById(int id) {
		return productRepository.findById(id);
	}

	@Override
	public int getTotalItem() {
		return (int) productRepository.count();
	}

	@Override
	@Transactional
	public ProductEntity save(ProductEntity entity) {
		CategoryEntity cate = categoryRepository.findById(entity.getCategory().getId());
		ProductEntity productEntity = new ProductEntity();
		productEntity = entity;
		productEntity.setCategory(cate);
		return productRepository.save(productEntity);
	}

	@Override
	@Transactional
	public void delete(int id) {
		productRepository.deleteById(id);
	}

	@Override
	public List<ProductEntity> findTop() {
		// TODO Auto-generated method stub
		return productRepository.findTop();
	}

	@Override
	public List<ProductEntity> findAllByCategory(int id) {
		// TODO Auto-generated method stub
		return productRepository.findAllByCategory(id);
	}

	@Override
	public void updateQuantity(Integer productId, Integer quantity) {
		productRepository.updateQuantity(productId, quantity);
	}

}
