package com.project.bision.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.bision.service.UserService;
import com.project.bision.vo.UserVO;

@Controller
public class LoginController {

	@Autowired
	UserService service;

	@RequestMapping(value = "loginForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginForm() {
		return "login";
	}

	// 로그인
	@RequestMapping(value = "login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(UserVO vo, String remember_userId, HttpSession session, RedirectAttributes rttr,
			HttpServletResponse response, HttpServletRequest request) {
		if (session.getAttribute("userid") != null) {
			// 기존에 login이란 세션 값이 존재한다면
			session.removeAttribute("userid");// 기존값을 제거해 준다.
		}
		if (session.getAttribute("loginUser") != null) {
			// 기존에 login이란 세션 값이 존재한다면
			session.removeAttribute("loginUser");// 기존값을 제거해 준다.
		}

		UserVO loginUser = service.loginCheck(vo);

		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("userid", loginUser.getUserid());
			// 쿠키 추가
			if (remember_userId != null) {
				System.out.println("쿠키 생성");
				Cookie cookie1 = new Cookie("loginCookieId", loginUser.getUserid());
				cookie1.setPath("/");
				cookie1.setMaxAge(60 * 60 * 24 * 7);// 단위는 (초)임으로 7일정도로 유효시간을
													// 설정해 준다.
				// 쿠키를 적용해 준다.
				response.addCookie(cookie1);

				Cookie cookie2 = new Cookie("loginCookiePw", loginUser.getUserpw());
				cookie2.setPath("/");
				cookie2.setMaxAge(60 * 60 * 24 * 7);// 단위는 (초)임으로 7일정도로 유효시간을
													// 설정해 준다.
				// 쿠키를 적용해 준다.
				response.addCookie(cookie2);
			} else {
				System.out.println("쿠키 제거");
				Cookie myCookie = new Cookie("loginCookieId", null);
				myCookie.setMaxAge(0); // 쿠키의 expiration 타임을 0으로 하여 없앤다.
				myCookie.setPath("/"); // 모든 경로에서 삭제 됬음을 알린다.
				response.addCookie(myCookie);
				Cookie myCookie2 = new Cookie("loginCookiePw", null);
				myCookie2.setMaxAge(0); // 쿠키의 expiration 타임을 0으로 하여 없앤다.
				myCookie2.setPath("/"); // 모든 경로에서 삭제 됬음을 알린다.
				response.addCookie(myCookie2);
			}
			return "redirect:/";
		} else {
			rttr.addFlashAttribute("errorMassage", "아이디 또는 비밀번호가 일치하지 않습니다.");
			return "redirect:/loginForm";
		}
	}

	@RequestMapping(value = "logout", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) {
		session.removeAttribute("loginUser");
		return "redirect:/";
	}
	
	@RequestMapping(value = "signUpForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String signUpForm(HttpSession session) {
		return "signUp";
	}
	
	@RequestMapping(value = "signup", method = { RequestMethod.GET, RequestMethod.POST })
	public String signup(UserVO vo, RedirectAttributes rttr) {
		boolean signupCheck = service.signup(vo);
		
		if(signupCheck == true){
			rttr.addFlashAttribute("signupMessage", vo.getUserid() + "님 회원가입을 축하합니다.");
			return "redirect:/";
		}else{
			rttr.addFlashAttribute("signupErrMessage", "회원가입에 실패하였습니다.");
			return "redirect:/signup";
		}
		
		
	}
	
	@RequestMapping(value = "complatePayment", method = { RequestMethod.GET, RequestMethod.POST })
	public String complatePayment(UserVO vo, HttpSession session) {
		service.updatePayment((String)session.getAttribute("userid"));
		return "redirect:/";	
	}
	
	
}
