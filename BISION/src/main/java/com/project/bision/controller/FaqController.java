package com.project.bision.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FaqController {
	
	@RequestMapping(value = "faqForm", method = {RequestMethod.GET,RequestMethod.POST})
	public String faq(String value, Model model) {
		model.addAttribute("value", value);
		return "faq";
	}
	
}
