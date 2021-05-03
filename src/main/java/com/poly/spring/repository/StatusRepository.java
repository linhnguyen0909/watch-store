package com.poly.spring.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.poly.spring.entities.StatusEntity;

@Repository
public interface StatusRepository extends JpaRepository<StatusEntity, Integer> {
	@Query(value = "select * from status ORDER BY ?#{#pageable}", nativeQuery = true)
	List<StatusEntity> findAllList(Pageable pageable);//1
	
	@Query(value = "select * from status where id = ?1", nativeQuery = true)
	StatusEntity findById(int id);//1
	
	void deleteById(Integer id);//1
	
	StatusEntity findOneById(Integer id);//1
}
