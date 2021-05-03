package com.poly.spring.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.dto.StatictisAccountByMonth;
import com.poly.spring.entities.AccountEntity;

public interface IAccount {
	AccountEntity findById(int id);
	
	AccountEntity findByEmail(String email);
	
	List<AccountEntity> findAllList(Pageable pageable);
	
	void delete(int id);

	List<AccountEntity> findTop();
	
	AccountEntity login(String username, String password);
	
	int getTotalItem();
	
	AccountEntity save(AccountEntity entity);
	
	StatictisAccountByMonth statisticAccountByMonth();
}
