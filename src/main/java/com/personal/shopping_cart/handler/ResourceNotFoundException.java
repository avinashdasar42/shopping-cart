package com.personal.shopping_cart.handler;

public class ResourceNotFoundException extends Exception{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3583844588989598407L;

	public ResourceNotFoundException() {
		super();
	}
	
	public ResourceNotFoundException(final String message) {
		super(message);
	}
	
}
