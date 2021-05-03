package com.poly.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.entities.StatusEntity;
import com.poly.spring.repository.StatusRepository;
import com.poly.spring.service.IStatus;

@Service
public class StatusService implements IStatus {
	@Autowired
	private StatusRepository statusRepository;

	@Override
	public StatusEntity findById(int id) {
		// TODO Auto-generated method stub
		return statusRepository.findById(id);
	}

	@Override
	public List<StatusEntity> findAllList(Pageable pageable) {
		// TODO Auto-generated method stub
		return statusRepository.findAllList(pageable);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

}
