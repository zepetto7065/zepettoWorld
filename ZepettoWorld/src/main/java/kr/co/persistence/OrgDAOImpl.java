package kr.co.persistence;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Repository;

import kr.co.domain.MemberVO;
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

		//json 객체 생성 및 jsonarray에 저장 
		for(int i = 0;i<list.size();i++) {
			JSONObject data = new JSONObject();

			
			data.put("id", list.get(i).getId());
			data.put("parent", list.get(i).getPid());
			data.put("text", list.get(i).getName());
			
			jsonArray.add(data);
	
		}

		return jsonArray;
		
	}


	@Override
	public List<String> orgUserList(String nodeId) {
		// TODO Auto-generated method stub
		List<String> list = sqlSession.selectList(NAMESPACE + ".orgUserList",nodeId);
		System.out.println(list.toString());
		
		return list;
	}
	
	@Override
	public List<MemberVO> orgUserDetail(String userName) {
		// TODO Auto-generated method stub
		List<MemberVO> list = sqlSession.selectList(NAMESPACE + ".orgUserDetail",userName);
		System.out.println(list.toString());
		
		return list;
	}



}
