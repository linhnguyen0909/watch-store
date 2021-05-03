package com.poly.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.ReviewEntity;
import com.poly.spring.repository.ReviewRepository;
import com.poly.spring.service.IReview;

@Service
public class ReviewService implements IReview {
	@Autowired
	private ReviewRepository reviewRepository;

	@Override
	public ReviewEntity findById(int id) {
		// TODO Auto-generated method stub
		return reviewRepository.findById(id);
	}

	@Override
	public List<ReviewEntity> findAllList(Pageable pageable) {
		// TODO Auto-generated method stub
		return reviewRepository.findAllList(pageable);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

}
