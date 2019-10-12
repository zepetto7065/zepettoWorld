package kr.co.ca;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("login")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	//로그인 UI
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
	
	//로그아웃 세션 처리
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout() {
		return "/login/logout";
	}
	
	
	@RequestMapping(value = "loginFail", method = RequestMethod.GET)
	public String loginFail() {
		return "/login/loginFail";
	}
	
	@RequestMapping(value = "loginAccessDenied", method = RequestMethod.GET)
	public String loginAccessDenied() {
		return "/login/loginAccessDenied";
	}
	
}
