package kr.co.persistence;

import java.util.List;

import org.json.simple.JSONArray;

import kr.co.domain.MemberVO;


public interface OrgDAO {

	JSONArray orgList() throws Exception;

	List<String> orgUserList(String nodeId);

	List<MemberVO> orgUserDetail(String userName);

}
