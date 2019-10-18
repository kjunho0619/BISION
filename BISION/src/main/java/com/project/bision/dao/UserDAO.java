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

	public boolean signup(UserVO vo) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		
		if(mapper.signup(vo) == 1){
			return true;
		}else{
			return false;
		}
	}

	public void updatePayment(UserVO vo) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		mapper.updatePayment(vo);
		
	}
}
