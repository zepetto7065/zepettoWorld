package com.zepetto.world.persistence;

import java.util.List;

import com.zepetto.world.domain.MemberVO;
import org.json.simple.JSONArray;


public interface OrgDAO {

	JSONArray orgList() throws Exception;

	List<String> orgUserList(String nodeId);

	List<MemberVO> orgUserDetail(String userName);

}
