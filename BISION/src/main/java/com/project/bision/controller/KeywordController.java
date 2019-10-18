package com.project.bision.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.bision.service.KeywordService;
import com.project.bision.util.OverallAnalysis;
import com.project.bision.util.PageNavigator;
import com.project.bision.vo.AgeCountVO;
import com.project.bision.vo.CpyNewsInfoVO;
import com.project.bision.vo.CpyRliAgeCountVO;
import com.project.bision.vo.CpyRliGenderCountVO;
import com.project.bision.vo.CpyRliYearCountVO;
import com.project.bision.vo.GenderCountVO;
import com.project.bision.vo.KeywordVO;
import com.project.bision.vo.MonthCountVO;
import com.project.bision.vo.NewsInfoVO;
import com.project.bision.vo.RliKeywordVO;
import com.project.bision.vo.RliMonthCountVO;
import com.project.bision.vo.YearCountVO;


@Controller
public class KeywordController {
	
	@Autowired
	KeywordService service;
	
	@RequestMapping(value = "keywordmain", method = {RequestMethod.GET,RequestMethod.POST})
	public String keywordmain(Model model) {
		return "keywordmain";
	}
	
	@RequestMapping(value = "searchKeyword", method = {RequestMethod.GET,RequestMethod.POST})
	public String searchkeyword(String searchKeyword, Model model, @RequestParam(value="news_division",  defaultValue="ALL") String news_division,
			@RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		
		System.out.println("searchKeyword : " + searchKeyword);
		model.addAttribute("searchKeyword", searchKeyword);
		
		KeywordVO keyword = service.getKeyword(searchKeyword);//예외처리
		if(keyword != null){
			int keywordseq = keyword.getKeywordseq();
			System.out.println("keywordseq : " + keywordseq);
			model.addAttribute("keywordseq", keywordseq);
			
			//기업 최근달 검색수
			MonthCountVO monthcount = service.getMonthCount(keywordseq);
			model.addAttribute("cpymonthcount", monthcount );
			System.out.println(monthcount);
			
			//연관검색어
			ArrayList<RliKeywordVO> RliKeywordList = service.getRliKeyword(keywordseq);
			model.addAttribute("cpyRliKeywordList", RliKeywordList);
			
			//성별 검색량
			GenderCountVO GenderCount = service.getGenderCount(keywordseq);
			model.addAttribute("cpyGenderCount", GenderCount);
			
			//1년 검색량
			ArrayList<YearCountVO> YearCountList = service.getYearCount(keywordseq);
			model.addAttribute("cpyYearCountList", YearCountList);
			
			//나이 검색량
			ArrayList<AgeCountVO> AgeCountList = service.getAgeCount(keywordseq);
			model.addAttribute("cpyAgeCountList", AgeCountList);
			
			int totalRecordCount = service.getNewsListCount(news_division, keywordseq);
			System.out.println("totalRecordCount : " + totalRecordCount);
			
			PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
			System.out.println(navi.getStartRecord());
			
			ArrayList<NewsInfoVO> newsInfo = service.getNewsInfo(news_division, keywordseq, navi.getStartRecord(), navi.getCountPerPage());
			for(NewsInfoVO news : newsInfo){
				System.out.println(news);
			}
			model.addAttribute("cpyNewsInfo", newsInfo);
			model.addAttribute("news_division", news_division);
			model.addAttribute("navi", navi);
			
			//종합평가
			OverallAnalysis o = new OverallAnalysis();
			 
			double overallMonthCount = o.keywordCountOverall(monthcount, YearCountList); //검색량 종합평가
			model.addAttribute("overallMonthCount", String.format("%.3f", overallMonthCount));
			
			double overallEmtanalysis = o.keywordoverallEmtanalysis(newsInfo);//감정분석 종합평가
			model.addAttribute("overallEmtanalysis", String.format("%.3f", overallEmtanalysis));
			 
			double overallAnalysis = (overallMonthCount + overallEmtanalysis);//종합평가
			model.addAttribute("overallAnalysis", String.format("%.3f", overallAnalysis));
			
//			System.out.println("검색량 종합평가 가중치 : " + overallMonthCount); 
//			System.out.println("감정분석 종합평가 가중치 : " + overallEmtanalysis);
//			System.out.println("주식 종합평가 가중지 : " + overallStaokPer);
//			System.out.println("종합평가 : " + overallAnalysis); 
			
			
		}else{
			model.addAttribute("noKeyword", "noKeyword");
		}
		
		return "searchkeyword";
	}
	
	@RequestMapping(value = "searchNewsDetali", method = {RequestMethod.GET,RequestMethod.POST})
	public String searchNewsDetali(int news_seq, Model model) {
		System.out.println("news_seq : " + news_seq);
		
		NewsInfoVO detailNews = service.getDetailNews(news_seq);
		model.addAttribute("detailNews", detailNews);
		System.out.println(detailNews);
		
		return "searchNewsDetali";
	}	
	
/*	@RequestMapping(value = "Rlisearch", method = {RequestMethod.GET,RequestMethod.POST})
	public String Rlisearch(String rlikeyword, int keywordseq, Model model) {
		System.out.println(rlikeyword);
		System.out.println(keywordseq);
		
		model.addAttribute("rlikeyword", rlikeyword);
		
		//기업 연관검색 키워드 검색
		RliKeywordVO rilKeyword = service.getRliKeyword(rlikeyword, keywordseq);//예외처리
		System.out.println(rilKeyword);
		
		if(rilKeyword != null){
			int rilKeywordseq = rilKeyword.getRlikeywordseq();
			model.addAttribute("rilKeywordseq", rilKeywordseq);
			System.out.println("rilKeywordseq : " + rilKeywordseq);
			
			//기업 최근달 검색수
			RliMonthCountVO rlimonthcount = service.getRliMonthCount(rilKeywordseq, keywordseq);
			model.addAttribute("cpymonthcount", rlimonthcount);
			System.out.println("rlimonthcount : " + rlimonthcount);
			//성별 검색량
			CpyRliGenderCountVO cpyrliGenderCount = service.getCpyRliGenderCount(cpyRilKeywordseq, cpykeywordseq);
			model.addAttribute("cpyGenderCount", cpyrliGenderCount);
			System.out.println("cpyrliGenderCount : " + cpyrliGenderCount);
			
			//1년 검색량
			ArrayList<CpyRliYearCountVO> cpyRliYearCountList = service.getCpyRliYearCount(cpyRilKeywordseq, cpykeywordseq);
			model.addAttribute("cpyYearCountList", cpyRliYearCountList);
			System.out.println("cpyRliYearCountList : " + cpyRliYearCountList);
			
			//나이 검색량
			ArrayList<CpyRliAgeCountVO> cpyRliAgeCountList = service.getCpyRliAgeCount(cpyRilKeywordseq, cpykeywordseq);
			model.addAttribute("cpyAgeCountList", cpyRliAgeCountList);
			System.out.println("cpyRliAgeCountList : " + cpyRliAgeCountList);
			
			//종합평가
			OverallAnalysis o = new OverallAnalysis();
			
			double overallRliMonthCount = o.searchRliCountOverall(cpyrlimonthcount, cpyRliYearCountList); //검색량 종합평가
			model.addAttribute("overallMonthCount", String.format("%.3f", overallRliMonthCount));
			
			double overallAnalysis = overallRliMonthCount;//종합평가
			model.addAttribute("overallAnalysis", String.format("%.3f", overallAnalysis));
			
			
		}else{
			model.addAttribute("noKeyword", "noKeyword");
		}		
		return "Rlisearch";
	}*/
	
	
/*	@RequestMapping(value = "/cpysearch", method = {RequestMethod.GET,RequestMethod.POST})
	public String cpysearch(String searchKeyword, Model model, @RequestParam(value="news_division",  defaultValue="ALL") String news_division,
			@RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		
				System.out.println("searchKeyword : " + searchKeyword);
				model.addAttribute("searchKeyword", searchKeyword);
				//기업 키워드 검색
				CpyKeywordVO cpyKeyword = service.getCpyKeyword(searchKeyword);//예외처리
				if(cpyKeyword != null){
					
					int cpykeywordseq = cpyKeyword.getCpykeywordseq();
					System.out.println("cpykeywordseq : " + cpykeywordseq);
					model.addAttribute("cpykeywordseq", cpykeywordseq);
					
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
					//System.out.println("totalRecordCount : " + totalRecordCount);
					
					PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
					//System.out.println(navi.getStartRecord());
					
					
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
	
	@RequestMapping(value = "cpysearchNewsDetali", method = {RequestMethod.GET,RequestMethod.POST})
	public String cpysearchNewsDetali(int news_no, Model model) {
		System.out.println(news_no);
		
		CpyNewsInfoVO detailNews = service.getDetailNews(news_no);
		model.addAttribute("detailNews", detailNews);
		System.out.println(detailNews);
		
		return "cpysearchNewsDetali";
	}	
	
	@RequestMapping(value = "cpyRlisearch", method = {RequestMethod.GET,RequestMethod.POST})
	public String cpyRlisearch(String rlikeyword, int cpykeywordseq, Model model) {
		System.out.println(rlikeyword);
		System.out.println(cpykeywordseq);
		
		model.addAttribute("rlikeyword", rlikeyword);
		
		//기업 연관검색 키워드 검색
		CpyRliKeywordVO cpyRilKeyword = service.getCpyRliKeyword(rlikeyword, cpykeywordseq);//예외처리
		
		if(cpyRilKeyword != null){
			int cpyRilKeywordseq = cpyRilKeyword.getCpyrlikeywordseq();
			model.addAttribute("cpyRilKeywordseq", cpyRilKeywordseq);
			System.out.println("cpyRilKeywordseq : " + cpyRilKeywordseq);
			//기업 최근달 검색수
			CpyRliMonthCountVO cpyrlimonthcount = service.getCpyRliMonthCount(cpyRilKeywordseq, cpykeywordseq);
			model.addAttribute("cpymonthcount", cpyrlimonthcount);
			System.out.println("cpyrlimonthcount : " + cpyrlimonthcount);
			//성별 검색량
			CpyRliGenderCountVO cpyrliGenderCount = service.getCpyRliGenderCount(cpyRilKeywordseq, cpykeywordseq);
			model.addAttribute("cpyGenderCount", cpyrliGenderCount);
			System.out.println("cpyrliGenderCount : " + cpyrliGenderCount);
			
			//1년 검색량
			ArrayList<CpyRliYearCountVO> cpyRliYearCountList = service.getCpyRliYearCount(cpyRilKeywordseq, cpykeywordseq);
			model.addAttribute("cpyYearCountList", cpyRliYearCountList);
			System.out.println("cpyRliYearCountList : " + cpyRliYearCountList);
			
			//나이 검색량
			ArrayList<CpyRliAgeCountVO> cpyRliAgeCountList = service.getCpyRliAgeCount(cpyRilKeywordseq, cpykeywordseq);
			model.addAttribute("cpyAgeCountList", cpyRliAgeCountList);
			System.out.println("cpyRliAgeCountList : " + cpyRliAgeCountList);
			
			//종합평가
			OverallAnalysis o = new OverallAnalysis();
			
			double overallRliMonthCount = o.searchRliCountOverall(cpyrlimonthcount, cpyRliYearCountList); //검색량 종합평가
			model.addAttribute("overallMonthCount", String.format("%.3f", overallRliMonthCount));
			
			double overallAnalysis = overallRliMonthCount;//종합평가
			model.addAttribute("overallAnalysis", String.format("%.3f", overallAnalysis));
			
		}else{
			model.addAttribute("noKeyword", "noKeyword");
		}
		
		return "cpyRlisearch";
	}	*/
	
	
	
}