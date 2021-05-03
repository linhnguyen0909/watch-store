package com.poly.spring.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.StatusEntity;
@Service
public interface IStatus {
	StatusEntity findById(int id);
	List<StatusEntity> findAllList(Pageable pageable);
	void delete(int id);
}
