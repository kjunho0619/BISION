package com.project.bision.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.bision.vo.AgeCountVO;
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
import com.project.bision.vo.GenderCountVO;
import com.project.bision.vo.KeywordVO;
import com.project.bision.vo.MonthCountVO;
import com.project.bision.vo.NewsInfoVO;
import com.project.bision.vo.RliKeywordVO;
import com.project.bision.vo.RliMonthCountVO;
import com.project.bision.vo.YearCountVO;

@Repository
public class KeywordDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
/*	public CpyMonthCountVO getCpyMonthCount(int cpykeywordseq) {
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

	public ArrayList<CpyNewsInfoVO> getCpyNewsInfo(CpyNewsInfoVO vo) {
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
	}

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

	public ArrayList<CpyRliAgeCountVO> getCpyRliAgeCount(Map<String, String> map) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		ArrayList<CpyRliAgeCountVO> getCpyRliAgeCount = null;
		try{
			getCpyRliAgeCount = mapper.getCpyRliAgeCount(map);
		}catch (Exception e) {
			// TODO: handle exception
			getCpyRliAgeCount = null;
		}
		return getCpyRliAgeCount;
	}

	public ArrayList<CpyRliYearCountVO> getCpyRliYearCount(Map<String, String> map) {
		// TODO Auto-generated method stub
		MainMapper mapper = sqlSession.getMapper(MainMapper.class);
		ArrayList<CpyRliYearCountVO> getCpyRliYearCount = null;
		try{
			getCpyRliYearCount = mapper.getCpyRliYearCount(map);
		}catch (Exception e) {
			// TODO: handle exception
			getCpyRliYearCount = null;
		}
		return getCpyRliYearCount;
	}*/

	public KeywordVO getKeyword(String searchKeyword) {
		// TODO Auto-generated method stub
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		KeywordVO keyword = null;
		try{
			keyword = mapper.getKeyword(searchKeyword);
		}catch (Exception e) {
			// TODO: handle exception
			keyword = null;
		}
		
		return keyword ;
	}

	public MonthCountVO getMonthCount(int keywordseq) {
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		MonthCountVO monthCount = null;
		try {
			monthCount = mapper.getMonthCount(keywordseq);
		} catch (Exception e) {
			// TODO: handle exception
			monthCount = null;
		}
		return monthCount;
	}

	public ArrayList<RliKeywordVO> getRliKeyword(int keywordseq) {
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		ArrayList<RliKeywordVO> rliKeyword = null;
		try {
			rliKeyword = mapper.getRliKeyword(keywordseq);
		} catch (Exception e) {
			// TODO: handle exception
			rliKeyword = null;
		}
		return rliKeyword;
	}

	public GenderCountVO getGenderCount(int keywordseq) {
		// TODO Auto-generated method stub
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		GenderCountVO genderCount = null;
		try {
			genderCount = mapper.getGenderCount(keywordseq);
		} catch (Exception e) {
			// TODO: handle exception
			genderCount = null;
		}
		return genderCount;
	}

	public ArrayList<YearCountVO> getYearCount(int keywordseq) {
		// TODO Auto-generated method stub
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		ArrayList<YearCountVO> yearCount = null;
		try {
			yearCount = mapper.getYearCount(keywordseq);
		} catch (Exception e) {
			// TODO: handle exception
			yearCount = null;
		}
		return yearCount;
	}

	public ArrayList<AgeCountVO> getAgeCount(int keywordseq) {
		// TODO Auto-generated method stub
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		ArrayList<AgeCountVO> ageCount = null;
		try {
			ageCount = mapper.getAgeCount(keywordseq);
		} catch (Exception e) {
			// TODO: handle exception
			ageCount = null;
		}
		return ageCount;
	}

	public int getNewsListCount(NewsInfoVO vo) {
		// TODO Auto-generated method stub
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		int NewsListCount = 0;
		try {
			NewsListCount = mapper.getNewsListCount(vo);
		} catch (Exception e) {
			// TODO: handle exception
			NewsListCount = 0;
		}
		return NewsListCount;
	}

	public ArrayList<NewsInfoVO> getNewsInfo(NewsInfoVO vo, RowBounds rb) {
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		ArrayList<NewsInfoVO> newsInfo = null;
		try{
			newsInfo = mapper.getNewsInfo(vo, rb);
		}catch (Exception e) {
			// TODO: handle exception
			newsInfo = null;
		}
		return newsInfo;
	}

	public RliKeywordVO getRliKeyword(Map<String, String> map) {
		// TODO Auto-generated method stub
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		RliKeywordVO rliKeyword = null;
		try{
			rliKeyword = mapper.getRliKeywordsearch(map);
		}catch (Exception e) {
			// TODO: handle exception
			rliKeyword = null;
		}
		return rliKeyword;
	}

	public RliMonthCountVO getRliMonthCount(Map<String, String> map) {
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		RliMonthCountVO rliMonthCount = null;
		try{
			rliMonthCount = mapper.getRliMonthCount(map);
		}catch (Exception e) {
			// TODO: handle exception
			rliMonthCount = null;
		}
		return rliMonthCount;
	}

	public NewsInfoVO getDetailNews(int news_seq) {
		KeywordMapper mapper = sqlSession.getMapper(KeywordMapper.class);
		NewsInfoVO detailNews = null;
		try{
			detailNews = mapper.getDetailNews(news_seq);
		}catch (Exception e) {
			// TODO: handle exception
			detailNews = null;
		}
		return detailNews;
	}
}
