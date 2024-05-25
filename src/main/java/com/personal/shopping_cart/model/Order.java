package com.personal.shopping_cart.model;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties
public class Order {
	
	private Integer id;
	
	private String username;
	
	private Integer totalValue;
	
	private Date orderedDate;
	
	private List<OrderDetails> items;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getTotalValue() {
		return totalValue;
	}

	public void setTotalValue(Integer totalValue) {
		this.totalValue = totalValue;
	}

	public Date getOrderedDate() {
		return orderedDate;
	}

	public void setOrderedDate(Date orderedDate) {
		this.orderedDate = orderedDate;
	}

	public List<OrderDetails> getItems() {
		return items;
	}

	public void setItems(List<OrderDetails> items) {
		this.items = items;
	}
	
	

}
