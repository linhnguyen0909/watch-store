package com.poly.spring.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.poly.spring.entities.CategoryEntity;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity, Long> {
	@Query(value = "select * from category ORDER BY ?#{#pageable}", nativeQuery = true)
	List<CategoryEntity> findAllList(Pageable pageable);//1
	
	@Query(value = "select * from category where id = ?1", nativeQuery = true)
	CategoryEntity findById(int id);//1
	
	void deleteById(Integer id);//1
	
	CategoryEntity findOneById(Integer id);//1

	@Modifying
	@Query(value = "Delete from category where id = ?1", nativeQuery = true)
	void deleteById(int id);
	
	
}
