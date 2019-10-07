package com.project.bision.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {
	private String userid; //아이디(이메일)
	private String username; //이름
	private String userpw; //비밀번호
	private String userbirth; //생년월일
	private String useraddress; //주소
	private String userphone; //전화번호
	private String useremail; //이메일
	private String userreception;//이메일 수신여부
	private String userjob;//직업(콤보)
	private String userbelong;//소속(학교/회사)
	private String usersns;//sns게정
	private int userdivision;//회원구분
}
