package com.project.bision.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.bision.vo.UserVO;

@Repository
public class UserDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public UserVO loginCheck(UserVO vo) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		return mapper.loginCheck(vo);
	}
}
