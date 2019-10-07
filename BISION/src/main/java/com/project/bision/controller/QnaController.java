package com.project.bision.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QnaController {
	
	@RequestMapping(value = "qnaForm", method = {RequestMethod.GET,RequestMethod.POST})
	public String qna(Locale locale, Model model) {
		return "qna";
	}
	
}
