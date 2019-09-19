package com.project.bision.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MainInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
/*		HttpSession session = request.getSession(); //새션객체를 request를 통해 얻어옴
		
		if(session.getAttribute("userid") != null) return true; //userid가 있다면 true반환
		response.sendRedirect("/web/member/loginForm");//없다면 LoginForm으로 redirect요청
*/		return false;//현제 화면을 멈추고 다른 화면으로 가기 위함
	}
}
