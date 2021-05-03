package com.poly.spring.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.poly.spring.dto.OrderDetailDto;
import com.poly.spring.entities.OrderDetailEntity;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetailEntity, Integer>{
	@Query(value = "select * from orderdetail ORDER BY ?#{#pageable}", nativeQuery = true)
	List<OrderDetailEntity> findAllList(Pageable pageable);//1
	
	@Query(value = "select * from orderdetail where id = ?1", nativeQuery = true)
	OrderDetailEntity findById(int id);//1
	
	void deleteById(Integer id);//1
	
	OrderDetailEntity findOneById(Integer id);//1
	
	@Modifying(clearAutomatically = true)
	@Transactional
	@Query(value = "INSERT INTO orderdetail(create_date, status, item_price, total_price, orderid, productid, quantity) VALUES "
			+ "(:#{#dto.createDate}, :#{#dto.status}, :#{#dto.itemPrice}, "
			+ ":#{#dto.totalPrice}, :#{#dto.orderId}, :#{#dto.productId}, :#{#dto.quantity})",
			nativeQuery = true)
	void insertByDto(@Param("dto") OrderDetailDto dto);
}
