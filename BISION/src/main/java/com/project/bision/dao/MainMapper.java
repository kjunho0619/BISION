package com.project.bision.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.project.bision.vo.CpyAgeCountVO;
import com.project.bision.vo.CpyGenderCountVO;
import com.project.bision.vo.CpyKeywordVO;
import com.project.bision.vo.CpyMonthCountVO;
import com.project.bision.vo.CpyNewsInfoVO;
import com.project.bision.vo.CpyRliAgeCountVO;
import com.project.bision.vo.CpyRliGenderCountVO;
import com.project.bision.vo.CpyRliKeywordVO;
import com.project.bision.vo.CpyRliMonthCountVO;
import com.project.bision.vo.CpyRliYearCountVO;
import com.project.bision.vo.CpyStaokVO;
import com.project.bision.vo.CpyYearCountVO;

public interface MainMapper {
	//기업 최근달 검색수
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
	ArrayList<CpyRliYearCountVO> getCpyRliYearCount(Map<String, String> map);
	
	
}
