package com.poly.spring.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.poly.spring.entities.CustomerEntity;

@Repository
public interface CustomerRepository extends JpaRepository<CustomerEntity, Integer> {
	@Query(value = "select * from customer ORDER BY ?#{#pageable}", nativeQuery = true)
	List<CustomerEntity> findAllList(Pageable pageable);//1
	
	@Query(value = "select * from customer where id = ?1", nativeQuery = true)
	CustomerEntity findById(int id);//1
	
	void deleteById(Integer id);//1
	
	CustomerEntity findOneById(Integer id);//1
}
