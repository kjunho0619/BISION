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
import org.springframework.web.bind.annotation.RequestParam;

import com.mashape.unirest.http.exceptions.UnirestException;
import com.project.bision.service.MainService;
import com.project.bision.util.OverallAnalysis;
import com.project.bision.util.PageNavigator;
import com.project.bision.utilll.APIExplorer;
import com.project.bision.utilll.Sample1;
import com.project.bision.utilll.newAPI;
import com.project.bision.vo.CpyAgeCountVO;
import com.project.bision.vo.CpyGenderCountVO;
import com.project.bision.vo.CpyKeywordVO;
import com.project.bision.vo.CpyMonthCountVO;
import com.project.bision.vo.CpyNewsInfoVO;
import com.project.bision.vo.CpyRliKeywordVO;
import com.project.bision.vo.CpyStaokVO;
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
	public String cpysearch(String searchKeyword, Model model, @RequestParam(value="news_division",  defaultValue="ALL") String news_division,
			@RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		
				System.out.println("searchKeyword : " + searchKeyword);
				model.addAttribute("searchKeyword", searchKeyword);
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
					
					//주식 정보
					CpyStaokVO cpyStaok = service.getCpyStaok(cpykeywordseq);
					//System.out.println(cpyStaok);
					model.addAttribute("cpyStaok", cpyStaok);
					
					
					//코드 추가
					
					int totalRecordCount = service.getCpyNewsListCount(news_division, cpykeywordseq);
					System.out.println("totalRecordCount : " + totalRecordCount);
					
					PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
					System.out.println(navi.getStartRecord());
					
					
					/////////////////////////////////////////////////////////////////////////////////
					
					//기업 뉴스 
					//CpyNewsInfoVO vo = new CpyNewsInfoVO();
					//vo.setCpykeywordseq(cpykeywordseq);
					//vo.setNews_division("ALL");
					//System.out.println(vo);
					
					ArrayList<CpyNewsInfoVO> cpyNewsInfo = service.getCpyNewsInfo(news_division, cpykeywordseq, navi.getStartRecord(), navi.getCountPerPage());
					for(CpyNewsInfoVO news : cpyNewsInfo){
						System.out.println(news);
					}
					model.addAttribute("cpyNewsInfo", cpyNewsInfo);
					model.addAttribute("news_division", news_division);
					model.addAttribute("navi", navi);
					
					//종합평가
					OverallAnalysis o = new OverallAnalysis();
					 
					double overallMonthCount = o.searchCountOverall(cpymonthcount, cpyYearCountList); //검색량 종합평가
					model.addAttribute("overallMonthCount", String.format("%.3f", overallMonthCount));
					
					double overallEmtanalysis = o.overallEmtanalysis(cpyNewsInfo);//감정분석 종합평가
					model.addAttribute("overallEmtanalysis", String.format("%.3f", overallEmtanalysis));
					
					double overallStaokPer = o.overallStaokPer(cpyStaok);//주식 종합평가
					model.addAttribute("overallStaokPer", String.format("%.3f", overallStaokPer));
					 
					double overallAnalysis = (overallMonthCount + overallEmtanalysis + overallStaokPer);//종합평가
					model.addAttribute("overallAnalysis", String.format("%.3f", overallAnalysis));
					
//					System.out.println("검색량 종합평가 가중치 : " + overallMonthCount); 
//					System.out.println("감정분석 종합평가 가중치 : " + overallEmtanalysis);
//					System.out.println("주식 종합평가 가중지 : " + overallStaokPer);
//					System.out.println("종합평가 : " + overallAnalysis); 
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