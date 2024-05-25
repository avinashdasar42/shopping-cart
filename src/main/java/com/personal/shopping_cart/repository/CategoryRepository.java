package com.personal.shopping_cart.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.personal.shopping_cart.model.Category;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Integer>{
	List<Category> findAll();
}
