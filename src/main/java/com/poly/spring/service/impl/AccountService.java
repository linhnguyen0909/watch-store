package com.poly.spring.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.spring.dto.StatictisAccountByMonth;
import com.poly.spring.entities.AccountEntity;
import com.poly.spring.repository.AccountRepository;
import com.poly.spring.service.IAccount;

@Service
public class AccountService implements IAccount {
	@Autowired
	private AccountRepository accountRepository;

	@Override
	public AccountEntity findById(int id) {
		return accountRepository.findById(id);
	}

	@Override
	public List<AccountEntity> findAllList(Pageable pageable) {
		return accountRepository.findAll(pageable).getContent();
	}

	@Override
	@Transactional
	public void delete(int id) {
		accountRepository.deleteById(id);
	}

	@Override
	public List<AccountEntity> findTop() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalItem() {
		return (int) accountRepository.count();
	}

	@Override
	public AccountEntity save(AccountEntity entity) {
		return accountRepository.save(entity);
	}

	@Override
	public AccountEntity login(String username, String password) {
		// TODO Auto-generated method stub
		return accountRepository.login(username, password);
	}

	@Override
	public AccountEntity findByEmail(String email) {
		// TODO Auto-generated method stub
		return accountRepository.findByEmail(email);
	}

	@Override
	public StatictisAccountByMonth statisticAccountByMonth() {
		// TODO Auto-generated method stub
		return accountRepository.statisticAccountByMonth();
	}

}
