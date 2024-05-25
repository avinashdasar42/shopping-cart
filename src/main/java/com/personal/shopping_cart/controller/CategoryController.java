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
import org.springframework.web.bind.annotation.RestController;

import com.personal.shopping_cart.model.Category;
import com.personal.shopping_cart.repository.CategoryRepository;

@RestController
@RequestMapping("/categories")
public class CategoryController {

	@Autowired
	private CategoryRepository categoryRepository;

	@GetMapping
	public ResponseEntity<List<Category>> getCategories() {
		List<Category> categories = categoryRepository.findAll();
		return ResponseEntity.ok(categories);
	}
	
	@PostMapping
	public ResponseEntity<Object> saveCategories(@RequestBody Category category) {
		category.setId(null);
		Date d = new Date();
		category.setCreatedDate(d);
		category.setUpdatedDate(d);
		try {
			Category newCategory = categoryRepository.save(category);
			return ResponseEntity.ok(newCategory);
		} catch (DataIntegrityViolationException ex) {
			if (ex.getMessage().contains("Unique index or primary key violation")) {
				Map<String,String> map = new HashMap<>();
				map.put("errorMessage", "Category already exists");
				return ResponseEntity.status(HttpStatusCode.valueOf(409)).body(map);
			} else {
				throw ex;
			}
		}
	}
	
	@PutMapping("/{categoryId}")
	public ResponseEntity<Category> saveCategories(@PathVariable("categoryId") Integer categoryId, @RequestBody Category request) {
		Optional<Category> catInDb = categoryRepository.findById(categoryId);
		if(catInDb.isPresent()) {
			Category category = catInDb.get();
			category.setName(request.getName());
			category.setDescription(request.getDescription());
			Date d = new Date();
			category.setUpdatedDate(d);
			categoryRepository.save(category);
			return ResponseEntity.ok(category);
		} else {
			return ResponseEntity.notFound().build();
		}
	}
	
	@DeleteMapping("/{categoryId}")
	public ResponseEntity<Void> deleteCategory(@PathVariable("categoryId") Integer categoryId) {
		categoryRepository.deleteById(categoryId);
		return ResponseEntity.noContent().build();
	}

}
