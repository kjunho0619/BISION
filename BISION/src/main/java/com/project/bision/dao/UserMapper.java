package com.project.bision.dao;

import com.project.bision.vo.UserVO;

public interface UserMapper {
	
	//로그인
	public UserVO loginCheck(UserVO vo);
	
	int GetKey(String userid, String userKey);
	int alterUserKey(String userid, String key);
}
