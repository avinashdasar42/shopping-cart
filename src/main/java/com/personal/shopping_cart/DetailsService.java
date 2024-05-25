package com.personal.shopping_cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.personal.shopping_cart.repository.UserRepository;

@Component
public class DetailsService {

	@Autowired
	UserRepository userRepository;
}
