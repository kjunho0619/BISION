package com.project.bision.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.bision.vo.QnaVO;


@Repository
public class QnaDAO {

	@Autowired
	SqlSession session;
	


	public List<QnaVO> qnaList() {
		QnaMapper mapper = session.getMapper(QnaMapper.class);
		List<QnaVO> qnaList = mapper.selectAll(null);
		
		return qnaList;
	}
}
