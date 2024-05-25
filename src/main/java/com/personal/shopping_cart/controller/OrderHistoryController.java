package com.personal.shopping_cart.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.personal.shopping_cart.model.Order;
import com.personal.shopping_cart.model.OrderDetails;
import com.personal.shopping_cart.model.OrderHistory;
import com.personal.shopping_cart.repository.OrderDetailsRepository;
import com.personal.shopping_cart.repository.OrderHistoryRepository;

@RestController
@RequestMapping("/order-history")
public class OrderHistoryController {
	
	@Autowired
	private OrderHistoryRepository orderHistoryRepository;
	
	@Autowired
	private OrderDetailsRepository orderDetailsRepository;
	
	@GetMapping
	public ResponseEntity<List<OrderHistory>> getOrderHistory(){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		List<OrderHistory> orders = orderHistoryRepository.findByUsername(authentication.getName());
		return ResponseEntity.ok(orders);
	}
	
	@GetMapping("/details")
	public ResponseEntity<List<OrderDetails>>getOrderDetails() {
		List<OrderDetails> orders = orderDetailsRepository.findAll();
		return ResponseEntity.ok(orders);
	}
	
	@GetMapping("/details/{id}")
	public ResponseEntity<Object> getOrderDetailsById(@PathVariable String id) {
		List<OrderDetails> orders = orderDetailsRepository.findByOrderId(Integer.valueOf(id));
		if(orders == null || orders.isEmpty()) {
			return ResponseEntity.status(HttpStatusCode.valueOf(404)).body("Order Details not found");
		}
		return ResponseEntity.ok(orders);
	}
	
	@PostMapping
	public ResponseEntity<Object> saveOrder(@RequestBody Order orderdata){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		OrderHistory orderHistory = new OrderHistory();
		orderHistory.setId(null);
		Date d = new Date();
		orderHistory.setOrderedDate(d);
		orderHistory.setUsername(username);
		orderHistory.setTotalValue(orderdata.getTotalValue());
		
		List<OrderDetails> items = orderdata.getItems();
		
		try {
			OrderHistory newOrder = orderHistoryRepository.save(orderHistory);
			for(OrderDetails orderDetails : items) {
				orderDetails.setOrderId(orderDetails.getId());
			}
			orderDetailsRepository.saveAll(items);
			return ResponseEntity.ok(newOrder);
		}catch(DataIntegrityViolationException ex) {
			if(ex.getMessage().contains("Unique index or primary key violation")) {
				Map<String,String> map = new HashMap<>();
				map.put("errorMessage", "Product already exists");
				return ResponseEntity.status(HttpStatusCode.valueOf(409)).body(map);
			}else {
				throw ex;
			}
		}
			
		}
	}
