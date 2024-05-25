package com.personal.shopping_cart.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.personal.shopping_cart.model.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Integer>{
	List<Product> findAll();
	List<Product> findByCategoryId(Integer categoryId);
}