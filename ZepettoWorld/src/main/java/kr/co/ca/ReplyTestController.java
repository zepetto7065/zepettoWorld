package kr.co.ca;



import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.ReplyVO;
import kr.co.service.ReplyService;

@Controller
@RequestMapping("reply")
public class ReplyTestController {

	private static final Logger logger = LoggerFactory.getLogger(ReplyTestController.class);

		
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String replyAjaxTest() {
		return "/tutorial/reply_test";
	}

	
}
