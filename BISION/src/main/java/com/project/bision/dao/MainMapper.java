package com.project.bision.dao;

import java.util.ArrayList;

import com.project.bision.vo.CpyAgeCountVO;
import com.project.bision.vo.CpyGenderCountVO;
import com.project.bision.vo.CpyKeywordVO;
import com.project.bision.vo.CpyMonthCountVO;
import com.project.bision.vo.CpyRliKeywordVO;
import com.project.bision.vo.CpyYearCountVO;

public interface MainMapper {
	//기업 최근달 검색수
	CpyMonthCountVO getCpyMonthCount(int cpykeywordseq);
	//연관검색어
	ArrayList<CpyRliKeywordVO> getCpyRliKeyword(int cpykeywordseq);
	//성별 검색량
	CpyGenderCountVO getCpyGenderCount(int cpykeywordseq);
	//1년 검색량
	ArrayList<CpyYearCountVO> getCpyYearCount(int cpykeywordseq);
	//나이 검색량
	ArrayList<CpyAgeCountVO> getCpyAgeCount(int cpykeywordseq);
	//기업명 검색
	CpyKeywordVO getCpyKeyword(String searchKeyword);
}
