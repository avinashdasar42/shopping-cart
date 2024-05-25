package com.personal.shopping_cart.handler;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import jakarta.servlet.http.HttpServletRequest;

@ControllerAdvice
public class CustomExceptionHandler {
	
	@ExceptionHandler(ResourceNotFoundException.class)
	@ResponseStatus(value=HttpStatus.NOT_FOUND)
	public ExceptionResponse handleResourceNotFoundException(HttpServletRequest request, ResourceNotFoundException exception) {
		ExceptionResponse errorResponse = new ExceptionResponse();
		errorResponse.setErrorMessage(exception.getMessage());
		errorResponse.setRequestedUrl(request.getRequestURI());
		return errorResponse;
	}

}
