package kr.co.service;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

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
	

	
}
