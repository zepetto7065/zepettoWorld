package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import kr.co.domain.MemberVO;
import kr.co.persistence.OrgDAO;

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
