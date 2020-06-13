package com.zepetto.world.ca;

import java.util.List;

import javax.inject.Inject;

import com.zepetto.world.domain.MemberVO;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zepetto.world.service.OrgService;


@Controller
@RequestMapping("popup")
public class OrgController {

	@Inject
	private OrgService orgService;
	
	@RequestMapping(value = "ptlOrg", method = RequestMethod.GET)
	public String ptlOrg() {
		return "/popup/ptlOrg";
	}
	

	@RequestMapping(value = "orgList", method = RequestMethod.GET)
	public @ResponseBody JSONArray orgOrgList() throws Exception {
		// 모든 메뉴를 추출하여 가져온다.
		JSONArray jsonDataList = orgService.orglist();

	
		return jsonDataList;
	}
	
	@RequestMapping(value = "orgUserList", method = RequestMethod.GET)
	public @ResponseBody List<String> orgUserList(@RequestParam(value="nodeId") String nodeId) throws Exception {
		System.out.println("nodeId ="+nodeId);
		List<String> list = orgService.orgUserList(nodeId);
		return list;

	}
	
	@RequestMapping(value = "orgUserDetail", method = RequestMethod.GET)
	public @ResponseBody List<MemberVO> orgUserDetail(@RequestParam(value="userName") String userName) throws Exception {
		System.out.println("userName ="+userName);
		List<MemberVO> list = orgService.orgUserDetail(userName);
		return list;
		
	}
	
		
	
}
