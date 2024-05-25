package com.personal.shopping_cart.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity(name="ORDER_HISTORY")
public class OrderHistory {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name="id")
	private Integer id;
	
	@Column(name="username")
	private String username;
	
	@Column(name="total_value")
	private Integer totalValue;
	
	@Column(name="ordered_date")
	private Date orderedDate;

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
	
	
}
