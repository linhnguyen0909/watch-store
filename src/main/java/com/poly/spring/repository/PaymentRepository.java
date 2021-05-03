package com.poly.spring.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.poly.spring.entities.PaymentEntity;

@Repository
public interface PaymentRepository extends JpaRepository<PaymentEntity, Integer> {
	@Query(value = "select * from payment ORDER BY ?#{#pageable}", nativeQuery = true)
	List<PaymentEntity> findAllList(Pageable pageable);//1
	
	@Query(value = "select * from payment where id = ?1", nativeQuery = true)
	PaymentEntity findById(int id);//1
	
	void deleteById(Integer id);//1
	
	PaymentEntity findOneById(Integer id);//1
}
