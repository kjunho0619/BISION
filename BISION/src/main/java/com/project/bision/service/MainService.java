package com.project.bision.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.bision.dao.MainDAO;
import com.project.bision.vo.CpyAgeCountVO;
import com.project.bision.vo.CpyGenderCountVO;
import com.project.bision.vo.CpyKeywordVO;
import com.project.bision.vo.CpyMonthCountVO;
import com.project.bision.vo.CpyNewsInfoVO;
import com.project.bision.vo.CpyRliKeywordVO;
import com.project.bision.vo.CpyStaokVO;
import com.project.bision.vo.CpyYearCountVO;

@Service
public class MainService {

	@Autowired
	MainDAO dao;
	
	public CpyMonthCountVO getCpyMonthCount(int cpykeywordseq) {
		// TODO Auto-generated method stub
		return dao.getCpyMonthCount(cpykeywordseq);
	}

	public ArrayList<CpyRliKeywordVO> getCpyRliKeyword(int cpykeywordseq) {
		// TODO Auto-generated method stub
		return dao.getCpyRliKeyword(cpykeywordseq);
	}

	public CpyGenderCountVO getCpyGenderCount(int cpykeywordseq) {
		// TODO Auto-generated method stub
		return dao.getCpyGenderCount(cpykeywordseq);
	}

	public ArrayList<CpyYearCountVO> getCpyYearCount(int cpykeywordseq) {
		// TODO Auto-generated method stub
		return dao.getCpyYearCount(cpykeywordseq);
	}

	public ArrayList<CpyAgeCountVO> getCpyAgeCount(int cpykeywordseq) {
		// TODO Auto-generated method stub
		return dao.getCpyAgeCount(cpykeywordseq);
	}

	public CpyKeywordVO getCpyKeyword(String searchKeyword) {
		// TODO Auto-generated method stub
		return dao.getCpyKeyword(searchKeyword);
	}

	public CpyStaokVO getCpyStaok(int cpykeywordseq) {
		// TODO Auto-generated method stub
		return dao.getCpyStaok(cpykeywordseq);
	}

//	public ArrayList<CpyNewsInfoVO> getCpyNewsInfo(CpyNewsInfoVO vo) {
//		// TODO Auto-generated method stub
//		return dao.getCpyNewsInfo(vo);
//	}

	public int getCpyNewsListCount(String news_division, int cpykeywordseq) {
		// TODO Auto-generated method stub
		CpyNewsInfoVO vo = new CpyNewsInfoVO();
		vo.setNews_division(news_division);
		vo.setCpykeywordseq(cpykeywordseq);
		System.out.println(vo);
		return dao.getCpyNewsListCount(vo);
	}

	public ArrayList<CpyNewsInfoVO> getCpyNewsInfo(String news_division, int cpykeywordseq, int startRecord,
			int countPerPage) {
		// TODO Auto-generated method stub
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		CpyNewsInfoVO vo = new CpyNewsInfoVO();
		vo.setNews_division(news_division);
		vo.setCpykeywordseq(cpykeywordseq);
		
		return dao.getCpyNewsInfo(vo, rb);
	}
}
