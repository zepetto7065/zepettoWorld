package kr.co.ca;

import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("popup")
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

	
	@RequestMapping(value = "orgList", method = RequestMethod.GET)
	public @ResponseBody JSONObject org_org() throws Exception {
		// 모든 메뉴를 추출하여 가져온다.
		JSONObject data = new JSONObject();
		data.put("id","test1");
		data.put("parent","#");
		data.put("text","jsonTest");

		
		JSONObject data2 = new JSONObject();
		data.put("id","test2");
		data.put("parent","#");
		data.put("text","jsonTest2");


		
		JSONObject response = new JSONObject();
		response.put("response",data);
		response.put("response2",data2);
		
		String jsonString = response.toJSONString();
		System.out.println(jsonString);
		System.out.println(data.toJSONString());
	
		return data;
	}
	
}
