package com.project.bision.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
@RequestMapping(value = "/", method = {RequestMethod.GET,RequestMethod.POST})
	public String main() {
		return "home";
	}

@RequestMapping(value = "homeForm", method = {RequestMethod.GET,RequestMethod.POST})
	public String homeForm() {
		return "redirect:/";
	}
}