package kr.co.persistence;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Repository;

import kr.co.domain.OrgMaker;



@Repository
public class OrgDAOImpl implements OrgDAO {

	
	private final String NAMESPACE = "kr.co.ca.OrgMapper";

	@Inject
	private SqlSession sqlSession; // null처럼 보이지만 null이 아님 @Inject 때문에

	
	@Override
	public JSONArray orgList() throws Exception {

		JSONArray jsonArray =  new JSONArray();

		List<OrgMaker> list = sqlSession.selectList(NAMESPACE+".orgList");
		
		String test = "";
		
		for(int i = 0;i<list.size();i++) {
			JSONObject data = new JSONObject();

			
			data.put("id", list.get(i).getId());
			data.put("parent", list.get(i).getPid());
			data.put("text", list.get(i).getName());
			
			jsonArray.add(data);
	
		}

		return jsonArray;
		
	}



}
