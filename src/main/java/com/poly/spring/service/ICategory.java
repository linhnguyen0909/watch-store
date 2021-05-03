package com.poly.spring.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.CategoryEntity;

@Service
public interface ICategory {
	CategoryEntity findById(int id);
	List<CategoryEntity> findAllList(Pageable pageable);
	void delete(int id);

	int getTotalItem();
	List<CategoryEntity> findAll();
	
	CategoryEntity save(CategoryEntity dto);
}
