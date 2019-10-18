package com.project.bision.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.bision.dao.UserDAO;
import com.project.bision.vo.UserVO;

@Service
public class UserService {

	@Autowired
	UserDAO dao;
	
	public UserVO loginCheck(UserVO vo) {
		// TODO Auto-generated method stub
		return dao.loginCheck(vo);
	}

	public boolean signup(UserVO vo) {
		// TODO Auto-generated method stub
		return dao.signup(vo);
	}

	public void updatePayment(String userid) {
		// TODO Auto-generated method stub
		UserVO vo = new UserVO();
		vo.setUserid(userid);
		
		dao.updatePayment(vo);
	}

	
}
