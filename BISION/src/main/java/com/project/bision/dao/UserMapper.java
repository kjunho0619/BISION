package com.project.bision.dao;

import com.project.bision.vo.UserVO;

public interface UserMapper {
	
	//로그인
	public UserVO loginCheck(UserVO vo);
	//회원가입
	public int signup(UserVO vo);
	//금액지불 update
	public void updatePayment(UserVO vo);
}
