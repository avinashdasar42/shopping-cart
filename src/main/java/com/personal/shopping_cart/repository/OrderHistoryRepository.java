package com.personal.shopping_cart.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.personal.shopping_cart.model.OrderHistory;

@Repository
public interface OrderHistoryRepository extends CrudRepository<OrderHistory, Integer>{
	List<OrderHistory> findAll();
	List<OrderHistory> findByUsername(String username);
}
