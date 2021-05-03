//package com.poly.spring.service.impl;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.poly.spring.entities.User;
//import com.poly.spring.repository.UserRepository;
//import com.poly.spring.service.UserService;
//
//@Service
//public class UserServiceImpl implements UserService{
//	
//	@Autowired
//	private UserRepository userServiceImpl;
//	
//	@Override
//	public List<User> findAll() {
//		return userServiceImpl.findAll();
//	}
//
//	@Override
//	public User find(Integer id) {
//		
//		return userServiceImpl.getOne(id);
//	}
//
//	@Override
//	public User insert(User entity) {
//		
//		return userServiceImpl.save(entity);
//	}
//
//	@Override
//	public void update(User entity) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void delete(Integer id) {
//		
//		
//	}
//
//	@Override
//	public void deleteById(Integer id) {
//		userServiceImpl.deleteById(id);
//		
//	}
//
//	@Override
//	public void findByUsername(User entity) {
//		// TODO Auto-generated method stub
//		
//	}
//
//}
