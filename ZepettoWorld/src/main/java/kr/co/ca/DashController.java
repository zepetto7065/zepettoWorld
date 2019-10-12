package kr.co.ca;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping("dboard")
public class DashController {


	@RequestMapping(value = "aboutMe", method = {RequestMethod.GET,RequestMethod.POST})
	public void aboutMe() {
		
	}
	
	@RequestMapping(value = "resume", method = RequestMethod.GET)
	public void resume() {
		
	}
	
	@RequestMapping(value = "contact", method = RequestMethod.GET)
	public void listDash() {
		
	}

}
