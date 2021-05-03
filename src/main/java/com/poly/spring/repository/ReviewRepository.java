package com.poly.spring.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.poly.spring.entities.ReviewEntity;

@Repository
public interface ReviewRepository extends JpaRepository<ReviewEntity, Integer> {
	@Query(value = "select * from review ORDER BY ?#{#pageable}", nativeQuery = true)
	List<ReviewEntity> findAllList(Pageable pageable);//1
	
	@Query(value = "select * from review where id = ?1", nativeQuery = true)
	ReviewEntity findById(int id);//1
	
	void deleteById(Integer id);//1
	
	ReviewEntity findOneById(Integer id);//1
}
