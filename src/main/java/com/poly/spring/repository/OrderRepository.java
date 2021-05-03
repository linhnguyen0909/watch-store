package com.poly.spring.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.poly.spring.dto.OrderDto;
import com.poly.spring.dto.OrderLatestDto;
import com.poly.spring.entities.OrderEntity;

@Repository
public interface OrderRepository extends JpaRepository<OrderEntity, Integer> {
	@Query(value = "select * from orders ORDER BY ?#{#pageable}", nativeQuery = true)
	List<OrderEntity> findAllList(Pageable pageable);//1
	
	@Query(value = "select * from orders where id = ?1", nativeQuery = true)
	OrderEntity findById(int id);//1
	
	void deleteById(Integer id);//1
	
	OrderEntity findOneById(Integer id);//1
	
	@Modifying(clearAutomatically = true)
	@Transactional
	@Query(value = "INSERT INTO orders(create_date, status, note, customerid, paymentid)"
			+ " VALUES(:#{#dto.createDate}, :#{#dto.status}, :#{#dto.note},"
			+ " :#{#dto.customerId}, :#{#dto.paymentTypeId})", nativeQuery = true)
	void insertByDto(@Param("dto") OrderDto dto);
	
	@Query(value = "SELECT MAX(id) as `maxId` FROM orders", nativeQuery = true)	
	OrderLatestDto findLatestId();
	
}
