package com.zepetto.world.service;

import java.util.List;

import com.zepetto.world.domain.MemberVO;
import org.json.simple.JSONArray;

public interface OrgService {

	JSONArray orglist() throws Exception;

	List<String> orgUserList(String nodeId);

	List<MemberVO> orgUserDetail(String userName);
	
}
