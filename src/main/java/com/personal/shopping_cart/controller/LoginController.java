package com.personal.shopping_cart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.personal.shopping_cart.model.Users;
import com.personal.shopping_cart.repository.UserRepository;

@RestController
public class LoginController {
	
	@Autowired
	private UserRepository userRepository;
	
	
	@PostMapping("/login")
	public ResponseEntity<String> login(@RequestBody Users user){
		if("admin".equals(user.getUserName()) && "admin".equals(user.getPassword())) {
			return ResponseEntity.ok("Successfully login");
		}else {
			return ResponseEntity.status(HttpStatusCode.valueOf(401)).body("Invalid Credential");
		}
	}
	
	@GetMapping("/login/users")
	public ResponseEntity<List<Users>> getUsers(){
		return ResponseEntity.ok(userRepository.findAll());
	}

}
