package com.project.bision.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mashape.unirest.http.exceptions.UnirestException;
import com.project.bision.service.MainService;
import com.project.bision.utilll.APIExplorer;
import com.project.bision.utilll.Sample1;
import com.project.bision.utilll.newAPI;
import com.project.bision.vo.CpyAgeCountVO;
import com.project.bision.vo.CpyGenderCountVO;
import com.project.bision.vo.CpyKeywordVO;
import com.project.bision.vo.CpyMonthCountVO;
import com.project.bision.vo.CpyRliKeywordVO;
import com.project.bision.vo.CpyYearCountVO;


@Controller
public class MainController {
	
	@Autowired
	MainService service;
	
	@RequestMapping(value = "/mainForm", method = {RequestMethod.GET,RequestMethod.POST})
	public String main(Model model) {
		return "main";
	}
	
	@RequestMapping(value = "/cpysearch", method = {RequestMethod.GET,RequestMethod.POST})
	public String cpysearch(String searchKeyword, Model model) {
		
				System.out.println("searchKeyword : " + searchKeyword);
				//기업 키워드 검색
				CpyKeywordVO cpyKeyword = service.getCpyKeyword(searchKeyword);//예외처리
				if(cpyKeyword != null){
					
					int cpykeywordseq = cpyKeyword.getCpykeywordseq();
					System.out.println("cpykeywordseq : " + cpykeywordseq);
					
					//기업 최근달 검색수
					CpyMonthCountVO cpymonthcount = service.getCpyMonthCount(cpykeywordseq);
					model.addAttribute("cpymonthcount", cpymonthcount);
					
					//연관검색어
					ArrayList<CpyRliKeywordVO> cpyRliKeywordList = service.getCpyRliKeyword(cpykeywordseq);
					model.addAttribute("cpyRliKeywordList", cpyRliKeywordList);
					
					//성별 검색량
					CpyGenderCountVO cpyGenderCount = service.getCpyGenderCount(cpykeywordseq);
					model.addAttribute("cpyGenderCount", cpyGenderCount);
					
					
					//1년 검색량
					ArrayList<CpyYearCountVO> cpyYearCountList = service.getCpyYearCount(cpykeywordseq);
					model.addAttribute("cpyYearCountList", cpyYearCountList);
					
					
					//나이 검색량
					ArrayList<CpyAgeCountVO> cpyAgeCountList = service.getCpyAgeCount(cpykeywordseq);
					model.addAttribute("cpyAgeCountList", cpyAgeCountList);
				}else{
					model.addAttribute("noKeyword", "noKeyword");
				}
				
		return "cpysearch";
	}
	
	@RequestMapping(value = "keywordSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public String replyDelete(String searchNaver) throws UnirestException, IOException, GeneralSecurityException, ParseException {
		APIExplorer searchAPI = new APIExplorer();
		searchAPI.searchKey(searchNaver);
		newAPI newsSearchAPI = new newAPI();
		newsSearchAPI.SearchKeyword(searchNaver);
		Sample1 searchKeyword = new Sample1(); 
		searchKeyword.searchKeyword(searchNaver);
		return "testSearch";
	}
}