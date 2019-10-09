package com.project.bision.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.bision.vo.CpyAgeCountVO;
import com.project.bision.vo.CpyGenderCountVO;
import com.project.bision.vo.CpyKeywordVO;
import com.project.bision.vo.CpyMonthCountVO;
import com.project.bision.vo.CpyNewsInfoVO;
import com.project.bision.vo.CpyRliGenderCountVO;
import com.project.bision.vo.CpyRliKeywordVO;
import com.project.bision.vo.CpyRliMonthCountVO;
import com.project.bision.vo.CpyStaokVO;
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

	public CpyStaokVO getCpyStaok(int cpykeywordseq) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		CpyStaokVO cpyStaok = null;
		try{
			cpyStaok = mapper.getCpyStaok(cpykeywordseq);
		}catch (Exception e) {
			// TODO: handle exception
			cpyStaok = null;
		}
		return cpyStaok;
	}

/*	public ArrayList<CpyNewsInfoVO> getCpyNewsInfo(CpyNewsInfoVO vo) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		ArrayList<CpyNewsInfoVO> cpyNewsInfo = null;
		try{
			cpyNewsInfo = mapper.getCpyNewsInfo(vo);
		}catch (Exception e) {
			// TODO: handle exception
			cpyNewsInfo = null;
		}
		return cpyNewsInfo;
	}*/

	public int getCpyNewsListCount(CpyNewsInfoVO vo) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		int cpyNewsListCount = 0;
		
		try{
			cpyNewsListCount = mapper.getCpyNewsListCount(vo);
		}catch(Exception e){
			cpyNewsListCount = 0;
		}
		
		return cpyNewsListCount;
	}

	public ArrayList<CpyNewsInfoVO> getCpyNewsInfo(CpyNewsInfoVO vo, RowBounds rb) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		ArrayList<CpyNewsInfoVO> cpyNewsInfo = null;
		try{
			cpyNewsInfo = mapper.getCpyNewsInfo(vo, rb);
		}catch (Exception e) {
			// TODO: handle exception
			cpyNewsInfo = null;
		}
		return cpyNewsInfo;
	}

	public CpyNewsInfoVO getDetailNews(int news_no) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		CpyNewsInfoVO detailNews = null;
		try{
			detailNews = mapper.getDetailNews(news_no);
		}catch (Exception e) {
			// TODO: handle exception
			detailNews = null;
		}
		return detailNews;
	}

	public CpyRliKeywordVO getCpyRliKeyword(Map<String, String> map) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		CpyRliKeywordVO cpyRliKeyword = null;
		try{
			cpyRliKeyword = mapper.getCpyRliKeywordsearch(map);
		}catch (Exception e) {
			// TODO: handle exception
			cpyRliKeyword = null;
		}
		return cpyRliKeyword;
	}

	public CpyRliMonthCountVO getCpyRliMonthCount(Map<String, String> map) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		CpyRliMonthCountVO cpyRliMonthCount = null;
		try{
			cpyRliMonthCount = mapper.getCpyRliMonthCount(map);
		}catch (Exception e) {
			// TODO: handle exception
			cpyRliMonthCount = null;
		}
		return cpyRliMonthCount;
	}

	public CpyRliGenderCountVO getCpyRliGenderCount(Map<String, String> map) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		CpyRliGenderCountVO cpyRliGenderCount = null;
		try{
			cpyRliGenderCount = mapper.getCpyRliGenderCount(map);
		}catch (Exception e) {
			// TODO: handle exception
			cpyRliGenderCount = null;
		}
		return cpyRliGenderCount;
	}
}
