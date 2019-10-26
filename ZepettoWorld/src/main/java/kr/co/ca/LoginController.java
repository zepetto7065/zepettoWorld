package kr.co.ca;



import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.JsonNode;
import com.github.scribejava.core.model.OAuth2AccessToken;

import kr.co.bo.KakaoAccessToken;
import kr.co.bo.KakaoUserInfo;
import kr.co.bo.NaverLoginBO;
import kr.co.domain.MemberVO;
import kr.co.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("login")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Inject
	private MemberService memberService;
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	

	//로그인 UI
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginGet(Model model,HttpSession session) {
		//네이버 아이디로 인증 URL 생성하기 위해 naverLoginBO클래스의 getAuthorizationUrl 메소드 호출
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		String kakaoAuthUrl = "https://kauth.kakao.com/oauth/authorize?client_id=18d418cd0b07d42fa9cb653c268ea446&redirect_uri=http://localhost:8080/login/kakaoCallback&response_type=code";
		//String kakaoAuthUrl = "https://kauth.kakao.com/oauth/authorize?client_id=18d418cd0b07d42fa9cb653c268ea446&redirect_uri=http://zepettoworld.com/login/kakaoCallback&response_type=code";
		
		System.out.println("네이버 인증 URL :::"+naverAuthUrl);
		
		model.addAttribute("naverAuthUrl",naverAuthUrl);
		model.addAttribute("kakaoAuthUrl",kakaoAuthUrl);
		
		return "/login/login";
	}

	//로그인 진행
	@RequestMapping(value = "loginPost", method = RequestMethod.POST)
	public void loginPost(MemberVO vo,Model model,HttpSession session) {
		MemberVO result =  memberService.loginUserInfo(vo); 
		
		System.out.println("login Post!");
		
		model.addAttribute("user",result);
		model.addAttribute("userType","zepettoUser");
		

	}
	
	//로그아웃 세션 처리
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession httpSession) {
		Object object = httpSession.getAttribute("signedUser");
		if(object != null) {
			httpSession.removeAttribute("signedUser");
			httpSession.removeAttribute("signedUserName");
			httpSession.invalidate();			
		}
		
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
	
	@RequestMapping(value = "testLogin", method = RequestMethod.GET)
	public String isComplete(HttpSession session) {
		return "/login/naverLogin";
	}
	
	
	//kako oauth2.0 처리 controller
	@RequestMapping(value = "kakaoCallback", method = RequestMethod.GET)
	public void kakaoCallback(@RequestParam("code")String code,RedirectAttributes ra,HttpSession session,HttpServletRequest response,Model model) {
		logger.info("kakao code : "+code);
		JsonNode jsonToken = KakaoAccessToken.getKakaoAccessToken(code);
		JsonNode accessToken = jsonToken.get("access_token");
		
		JsonNode userInfo = KakaoUserInfo.getKakaoUserInfo(accessToken);
		
		//get id
		String id = userInfo.path("id").asText();
		String name = "";
		String email = "";
		
		//유저정보 카카오에서 가져오기
		JsonNode properties = userInfo.path("properties");
		JsonNode kakao_account = userInfo.path("kakao_account");
		
		name = properties.path("nickname").asText()+"(Kakao)";
		email = kakao_account.path("email").asText();
		
		logger.info("properties:::"+properties.toString());
		logger.info("kakao_account:::"+kakao_account.toString());
		logger.info("id : "+id);
		logger.info("name : "+name);
		logger.info("email : "+email);

		model.addAttribute("user",id);
		model.addAttribute("userType","kakaoUser");
		model.addAttribute("userName",name);
	}

	
	
	
	@RequestMapping(value = "naverCallback", method ={ RequestMethod.GET,RequestMethod.POST})
	public void navLogin(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, HttpServletRequest reqeust) throws IOException, ParseException {
		System.out.println("Callback 입니다.");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		System.out.println("oauthToken ::: " + oauthToken);
		
		
		//1.로그인 사용자 정보를 읽어온다
		apiResult = naverLoginBO.getUserProfile(oauthToken); //String 형식의 json
		
		System.out.println("apiResult ::: " + apiResult);

		
		//2.String형식인 apiResult를 json으로
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject)obj;
		
		//3.데이터 파싱
		JSONObject response_obj = (JSONObject)jsonObj.get("response");
		//response의 nickname값 파싱
		String email = (String)response_obj.get("email");
		String userName = (String)response_obj.get("name")+"(naver)";


		model.addAttribute("user",email);
		model.addAttribute("userName",userName);
		model.addAttribute("userType","naverUser");
		
	}

	
	
	
}
