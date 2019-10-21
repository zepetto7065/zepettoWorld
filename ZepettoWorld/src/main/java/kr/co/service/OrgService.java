package kr.co.service;

import java.util.List;

import org.json.simple.JSONArray;

import kr.co.domain.MemberVO;

public interface OrgService {

	JSONArray orglist() throws Exception;

	List<String> orgUserList(String nodeId);

	List<MemberVO> orgUserDetail(String userName);
	
}
