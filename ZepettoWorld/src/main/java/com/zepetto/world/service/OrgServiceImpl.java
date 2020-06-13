package com.zepetto.world.service;

import java.util.List;

import javax.inject.Inject;

import com.zepetto.world.domain.MemberVO;
import com.zepetto.world.persistence.OrgDAO;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

@Service
public class OrgServiceImpl implements OrgService {

	@Inject
	private OrgDAO orgDao;

	@Override
	public JSONArray orglist() throws Exception {
		// TODO Auto-generated method stub
		return orgDao.orgList();
	}

	@Override
	public List<String> orgUserList(String nodeId) {
		// TODO Auto-generated method stub
		return orgDao.orgUserList(nodeId);
	}

	@Override
	public List<MemberVO> orgUserDetail(String userName) {
		// TODO Auto-generated method stub
		return orgDao.orgUserDetail(userName);
	}
	

	
}
