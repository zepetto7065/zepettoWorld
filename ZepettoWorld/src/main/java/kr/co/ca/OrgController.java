package kr.co.ca;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.domain.MemberVO;
import kr.co.service.MemberService;



@Controller
@RequestMapping("org")
public class OrgController {

	
	@RequestMapping(value = "ptlOrg", method = RequestMethod.GET)
	public String ptlOrg() {
		return "/popup/ptlOrg";
	}
	
	@RequestMapping(value = "org_org", method = RequestMethod.GET)
	public String org() {
		return "/popup/org_org";
	}	
	@RequestMapping(value = "org_list", method = RequestMethod.GET)
	public String orgList() {
		return "/popup/org_list";
	}	
	@RequestMapping(value = "org_detail", method = RequestMethod.GET)
	public String orgDetail() {
		return "/popup/org_detail";
	}	
	@RequestMapping(value = "org_dlist", method = RequestMethod.GET)
	public String orgDlist() {
		return "/popup/org_dlist";
	}	


	
}
