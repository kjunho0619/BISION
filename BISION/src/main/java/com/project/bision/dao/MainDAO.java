package com.project.bision.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.bision.vo.CpyAgeCountVO;
import com.project.bision.vo.CpyGenderCountVO;
import com.project.bision.vo.CpyKeywordVO;
import com.project.bision.vo.CpyMonthCountVO;
import com.project.bision.vo.CpyRliKeywordVO;
import com.project.bision.vo.CpyYearCountVO;

@Repository
public class MainDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public CpyMonthCountVO getCpyMonthCount(int cpykeywordseq) {
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		return mapper.getCpyMonthCount(cpykeywordseq);
	}

	public ArrayList<CpyRliKeywordVO> getCpyRliKeyword(int cpykeywordseq) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		return mapper.getCpyRliKeyword(cpykeywordseq);
	}

	public CpyGenderCountVO getCpyGenderCount(int cpykeywordseq) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		return mapper.getCpyGenderCount(cpykeywordseq);
	}

	public ArrayList<CpyYearCountVO> getCpyYearCount(int cpykeywordseq) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		return mapper.getCpyYearCount(cpykeywordseq);
	}

	public ArrayList<CpyAgeCountVO> getCpyAgeCount(int cpykeywordseq) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		return mapper.getCpyAgeCount(cpykeywordseq);
	}

	public CpyKeywordVO getCpyKeyword(String searchKeyword) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		CpyKeywordVO cpyKeyword = null;
		try{
			cpyKeyword = mapper.getCpyKeyword(searchKeyword);
		}catch (Exception e) {
			// TODO: handle exception
			cpyKeyword = null;
		}
		
		return cpyKeyword;
	}
}
