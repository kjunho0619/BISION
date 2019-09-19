package com.project.bision.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;

@ControllerAdvice
public class GlobalExceptionHandler {

/*	@ExceptionHandler(NullPointerException.class)
	public String nullpointerHandler(Model model, NullPointerException ex) {
		model.addAttribute("msg", "에러 발생");
		model.addAttribute("ex", ex);
		return "/exception/error";
	}
	
	@ExceptionHandler(ArithmeticException.class)
	public String arithmeticHandler(Model model, ArithmeticException ex) {
		model.addAttribute("msg", "에러 발생");
		model.addAttribute("ex", ex);
		return "/exception/error";
	}
	
	@ExceptionHandler(Exception.class)
	public String ExceptionHandler(Model model, Exception ex) {
		model.addAttribute("msg", "에러 발생");
		model.addAttribute("ex", ex);
		return "/exception/error";
	}*/
}
