package com.poly.spring.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.poly.spring.entities.ProductEntity;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Long> {
	
	@Query(value = "select * from product ORDER BY ?#{#pageable}", nativeQuery = true)
	List<ProductEntity> findAllList(Pageable pageable);// 1

	@Query(value = "select * from product limit 6", nativeQuery = true)
	List<ProductEntity> findTop();// 1

	@Query(value = "select * from product limit 6", nativeQuery = true)
	List<ProductEntity> findTop6Product();

	@Query(value = "select * from product where id = ?1", nativeQuery = true)
	ProductEntity findById(int id);// 1

	void deleteById(Integer id);// 1

	ProductEntity findOneById(Integer id);// 1

	@Query(value = "select * from product inner join category on product.id = category.id where category.id = ?1", nativeQuery = true)
	List<ProductEntity> findAllByCategory(int id);// 1
	
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE product SET quantity = ?2 WHERE id = ?1", nativeQuery = true)
	void updateQuantity(Integer productId, Integer quantity);
}
