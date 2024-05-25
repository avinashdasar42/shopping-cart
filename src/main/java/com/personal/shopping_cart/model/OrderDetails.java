package com.personal.shopping_cart.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity(name="ORDER_DETAILS")
public class OrderDetails {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name="id")
	private Integer id;
	
	@Column(name="order_id")
	private Integer orderId;
	
	@Column(name="product_id")
	private Integer productId;
	
	@Column(name="quantity")
	private Integer quantity;
	
	@Column(name="unit_price")
	private Integer unitPrice;
	
	@Column(name="discount")
	private Integer discount;
	
	@Column(name="extended_price")
	private Integer extendedPrice;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public Integer getExtendedPrice() {
		return extendedPrice;
	}

	public void setExtendedPrice(Integer extendedPrice) {
		this.extendedPrice = extendedPrice;
	}
	
	
}
