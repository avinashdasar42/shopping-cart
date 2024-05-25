package com.personal.shopping_cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.stereotype.Component;

import com.personal.shopping_cart.model.Users;
import com.personal.shopping_cart.repository.UserRepository;

@Component
public class UserCacheStartup implements ApplicationRunner{

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public void run(ApplicationArguments args) throws Exception {
		List<Users> users = userRepository.findAll();
		InMemoryUserDetailsManager userDetailService = (InMemoryUserDetailsManager) userDetailsService;
		
		for(Users u : users) {
			UserDetails user = User.builder().username(u.getUserName()).password(passwordEncoder.encode(u.getPassword())).roles("USERS").build();
			userDetailService.createUser(user);
		}
		
	}

}
