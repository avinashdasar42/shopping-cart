package com.personal.shopping_cart.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.personal.shopping_cart.model.Users;

public interface UserRepository extends CrudRepository<Users, Number>{
	
	List<Users> findAll();
	Users findByUserName(String userName);

}
