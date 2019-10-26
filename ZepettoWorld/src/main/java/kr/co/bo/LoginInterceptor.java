package kr.co.bo;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.domain.MemberVO;
import kr.co.service.MemberService;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Inject
	private MemberService memberService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		
		System.out.println("pre handler!");

		HttpSession httpSession = request.getSession();
		
		//기존 로그
		if(httpSession.getAttribute("signedUser") != null) {
			httpSession.removeAttribute("signedUser");
		}
		
		return true;		
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		System.out.println("post handler!");
		
		HttpSession httpSession = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();	
		
		String userType = (String) modelMap.get("userType");
	
		//zepetto 로그인
		if(userType.equals("zepettoUser")) {
			logger.info("new zepettoworld login success");

			MemberVO vo = (MemberVO) modelMap.get("user");
			
			httpSession.setAttribute("signedUser", vo);
			httpSession.setAttribute("signedUserName", vo.getUserName());
			modelAndView.setViewName("/index");
			//response.sendRedirect("/");

		}else if(userType.equals("kakaoUser")) {	//kakao Oauth Login
			logger.info("new kakao login success");

			httpSession.setAttribute("signedUser", modelMap.get("user") );
			httpSession.setAttribute("signedUserName", modelMap.get("userName"));
			modelAndView.setViewName("/index");
		}
		
		
	}
	
}