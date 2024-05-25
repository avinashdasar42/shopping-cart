package com.personal.shopping_cart.handler;

public class ExceptionResponse {

	private String errorMessage;
	private String requestedUrl;
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public String getRequestedUrl() {
		return requestedUrl;
	}
	public void setRequestedUrl(String requestedUrl) {
		this.requestedUrl = requestedUrl;
	}
}
