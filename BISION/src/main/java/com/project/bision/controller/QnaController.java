package com.project.bision.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.bision.dao.QnaDAO;


@Controller
public class QnaController {
	@Autowired
	QnaDAO qnadao;
	
	@RequestMapping(value = "qnaForm", method = {RequestMethod.GET,RequestMethod.POST})
	public String qna(Locale locale, Model model) {
		return "qna";
	}
	
	
	@RequestMapping("/qnaList")
	@ResponseBody
//에이작스로 정보를 받기위한 지정이다. 
	public void qnaList(Model model ) {
	
		model.addAttribute("qnaList", qnadao.qnaList());
		
	
	}
}
