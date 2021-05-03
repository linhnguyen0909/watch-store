package com.poly.spring.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.CategoryEntity;
import com.poly.spring.repository.CategoryRepository;
import com.poly.spring.service.ICategory;

@Service
public class CategoryService implements ICategory {
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Override
	public List<CategoryEntity> findAllList(Pageable pageable) {
		return categoryRepository.findAll(pageable).getContent();
	}

	@Override
	public CategoryEntity findById(int id) {
		return categoryRepository.findById(id);
	}

	@Override
	public int getTotalItem() {
		return (int) categoryRepository.count();
	}

	@Override
	public List<CategoryEntity> findAll() {
		return categoryRepository.findAll();
	}

	@Override
	@Transactional
	public void delete(int id) {
		categoryRepository.deleteById(id);
	}
	
	@Override
	@Transactional
	public CategoryEntity save(CategoryEntity entity) {
		return categoryRepository.save(entity);
	}

}
