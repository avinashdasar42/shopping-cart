package com.personal.shopping_cart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.personal.shopping_cart.model.Users;
import com.personal.shopping_cart.repository.UserRepository;

@RestController
@RequestMapping("/users")
public class UserController {

	@Autowired
	private UserRepository userRepository;
	
	@GetMapping
	public ResponseEntity<List<Users>> getUsers(){
		List<Users> users = userRepository.findAll();
		return ResponseEntity.ok(users);
	}
}
