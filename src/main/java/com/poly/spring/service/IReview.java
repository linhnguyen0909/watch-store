package com.poly.spring.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.ReviewEntity;
@Service
public interface IReview {
	ReviewEntity findById(int id);
	List<ReviewEntity> findAllList(Pageable pageable);
	void delete(int id);
}
