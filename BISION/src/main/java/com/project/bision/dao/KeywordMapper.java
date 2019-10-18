package com.project.bision.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.project.bision.vo.AgeCountVO;
import com.project.bision.vo.GenderCountVO;
import com.project.bision.vo.KeywordVO;
import com.project.bision.vo.MonthCountVO;
import com.project.bision.vo.NewsInfoVO;
import com.project.bision.vo.RliKeywordVO;
import com.project.bision.vo.RliMonthCountVO;
import com.project.bision.vo.YearCountVO;

public interface KeywordMapper {
/*	//기업 최근달 검색수
	CpyMonthCountVO getCpyMonthCount(int cpykeywordseq);
	//연관검색어 리스트
	ArrayList<CpyRliKeywordVO> getCpyRliKeyword(int cpykeywordseq);
	//성별 검색량
	CpyGenderCountVO getCpyGenderCount(int cpykeywordseq);
	//1년 검색량
	ArrayList<CpyYearCountVO> getCpyYearCount(int cpykeywordseq);
	//나이 검색량
	ArrayList<CpyAgeCountVO> getCpyAgeCount(int cpykeywordseq);
	//기업명 검색
	CpyKeywordVO getCpyKeyword(String searchKeyword);
	//기업주식
	CpyStaokVO getCpyStaok(int cpykeywordseq);
	//기업뉴스리스트
	ArrayList<CpyNewsInfoVO> getCpyNewsInfo(CpyNewsInfoVO vo, RowBounds rb);
	//뉴스 리스트 카운트
	int getCpyNewsListCount(CpyNewsInfoVO vo);
	//뉴스 디테일
	CpyNewsInfoVO getDetailNews(int news_no);
	//연관검색어
	CpyRliKeywordVO getCpyRliKeywordsearch(Map<String, String> map);
	//연관검색어 최근달 검색수
	CpyRliMonthCountVO getCpyRliMonthCount(Map<String, String> map);
	//연관검색어 성별 검색수
	CpyRliGenderCountVO getCpyRliGenderCount(Map<String, String> map);
	//연관검색어 나이별 검색
	ArrayList<CpyRliAgeCountVO> getCpyRliAgeCount(Map<String, String> map);
	//연관검색어 검색동향
	ArrayList<CpyRliYearCountVO> getCpyRliYearCount(Map<String, String> map);*/
	
	//키워드 검색
	KeywordVO getKeyword(String searchKeyword);
	//키워드 최근달 검색수
	MonthCountVO getMonthCount(int keywordseq);
	//키워드 연관검색어 리스트
	ArrayList<RliKeywordVO> getRliKeyword(int keywordseq);
	//키워드 성별 검색량
	GenderCountVO getGenderCount(int keywordseq);
	//키워드 검색동향
	ArrayList<YearCountVO> getYearCount(int keywordseq);
	//연령별 검색량
	ArrayList<AgeCountVO> getAgeCount(int keywordseq);
	//뉴스 리스트 카운트
	int getNewsListCount(NewsInfoVO vo);
	//키워드 뉴스 리스트
	ArrayList<NewsInfoVO> getNewsInfo(NewsInfoVO vo, RowBounds rb);
	//연관검색어 
	RliKeywordVO getRliKeywordsearch(Map<String, String> map);
	//연관검색어 최근달 검색수
	RliMonthCountVO getRliMonthCount(Map<String, String> map);
	//뉴스 디테일
	NewsInfoVO getDetailNews(int news_seq);
	
}
