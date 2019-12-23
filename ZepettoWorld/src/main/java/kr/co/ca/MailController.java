package kr.co.ca;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */

@Controller
public class MailController {
	
	private static final Logger logger = LoggerFactory.getLogger(MailController.class);

	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value = "/aboutme/portofolio", method = RequestMethod.GET)
	public void portofolio() {
		
	}
	
	
}
