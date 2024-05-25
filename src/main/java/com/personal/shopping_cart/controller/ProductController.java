package com.personal.shopping_cart.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.personal.shopping_cart.model.Product;
import com.personal.shopping_cart.repository.ProductRepository;

@RestController
@RequestMapping("/products")
public class ProductController {
	
	@Autowired
	private ProductRepository productRepository;
	
	@GetMapping
	public ResponseEntity<List<Product>> getProducts(@RequestParam(required=false, name="categoryId") Integer categoryId){
		List<Product> products = null;
		if(categoryId == null) {
			products = productRepository.findAll();
		}else {
			products = productRepository.findByCategoryId(categoryId);
		}
		return ResponseEntity.ok(products);
	}
	
	@PostMapping
	public ResponseEntity<Object> saveProduct(@RequestBody Product product){
		product.setId(null);
		Date d = new Date();
		product.setCreatedDate(d);
		product.setUpdatedDate(d);
		
		try {
			Product newProduct = productRepository.save(product);
			return ResponseEntity.ok(newProduct);
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
	
	@PutMapping("/{productId}")
	public ResponseEntity<Product> saveCategories(@PathVariable("productId") Integer productId, @RequestBody Product request){
		Optional<Product> productInDb = productRepository.findById(productId);
		
		if(productInDb.isPresent()) {
			Product product = productInDb.get();
			product.setName(request.getName());
			product.setDescription(request.getDescription());
			product.setCategoryId(request.getCategoryId());
			product.setPrice(request.getPrice());
			product.setDiscount(request.getDiscount());
			product.setUpdatedDate(new Date());
			productRepository.save(product);
			return ResponseEntity.ok(product);
		}else {
			return ResponseEntity.notFound().build();
		}		
	}
	
	@DeleteMapping("/{productId}")
	public ResponseEntity<Void> deleteProduct(@PathVariable("productId") Integer productId){
		productRepository.deleteById(productId);
		return ResponseEntity.noContent().build();
	}
	
	@GetMapping("/{productId}")
	public ResponseEntity<Product> getProductById(@PathVariable("productId") Integer productId){
		Optional<Product> product = productRepository.findById(productId);
		if(product.isPresent()) {
			return ResponseEntity.ok(product.get());
		}else {
			return ResponseEntity.noContent().build();	
		}
	}
}
