package com.project.bision.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainController {
	
	@RequestMapping(value = "/", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_1() {
		return "index";
	}
	
	@RequestMapping(value = "/dashboard_2", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_2() {
		return "dashboard_2";
	}
	
	@RequestMapping(value = "/dashboard_3", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_3() {
		return "dashboard_3";
	}
	
	@RequestMapping(value = "/dashboard_4_1", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_4_1() {
		return "dashboard_4_1";
	}
	
	@RequestMapping(value = "/dashboard_4", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_4() {
		return "dashboard_4";
	}
	
	@RequestMapping(value = "/dashboard_5", method = {RequestMethod.GET,RequestMethod.POST})
	public String dashboard_5() {
		return "dashboard_5";
	}
	
	@RequestMapping(value = "/activity_stream", method = {RequestMethod.GET,RequestMethod.POST})
	public String activity_stream() {
		return "activity_stream";
	}
	
	@RequestMapping(value = "/agile_board", method = {RequestMethod.GET,RequestMethod.POST})
	public String agile_board() {
		return "agile_board";
	}
	
	@RequestMapping(value = "/article", method = {RequestMethod.GET,RequestMethod.POST})
	public String article() {
		return "article";
	}
	
	@RequestMapping(value = "/badges_labels", method = {RequestMethod.GET,RequestMethod.POST})
	public String badges_labels() {
		return "badges_labels";
	}
	
	@RequestMapping(value = "/basic_gallery", method = {RequestMethod.GET,RequestMethod.POST})
	public String basic_gallery() {
		return "basic_gallery";
	}
	
	@RequestMapping(value = "/blog", method = {RequestMethod.GET,RequestMethod.POST})
	public String blog() {
		return "blog";
	}
	
	@RequestMapping(value = "/buttons", method = {RequestMethod.GET,RequestMethod.POST})
	public String buttons() {
		return "buttons";
	}
	
}
