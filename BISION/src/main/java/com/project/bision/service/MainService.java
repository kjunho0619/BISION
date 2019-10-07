package com.project.bision.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.bision.dao.MainDAO;
import com.project.bision.vo.CpyAgeCountVO;
import com.project.bision.vo.CpyGenderCountVO;
import com.project.bision.vo.CpyKeywordVO;
import com.project.bision.vo.CpyMonthCountVO;
import com.project.bision.vo.CpyRliKeywordVO;
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
	
}
