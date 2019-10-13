package kr.co.ca;



import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.domain.MemberVO;
import kr.co.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("login")
public class LoginController {
	

	@Inject
	private MemberService memberService;

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	//로그인 UI
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginGet() {
		return "/login/login";
	}
	
	//로그인 진행
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginPost(MemberVO vo) {
		memberService.loginSuc(vo);
		
		return "redirect:/";
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
