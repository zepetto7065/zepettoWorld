package kr.co.persistence;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import kr.co.domain.MemberVO;



@Repository
public class MemberDAOImpl implements MemberDAO {
	private final String NAMESPACE = "kr.co.ca.MemberMapper";

	@Inject
	private SqlSession sqlSession; // null처럼 보이지만 null이 아님 @Inject 때문에

	@Override
	public void join(MemberVO vo) {
		// TODO Auto-generated method stub	
		vo.setUserAddress(); // 주소 셋팅
		sqlSession.insert(NAMESPACE+".join", vo);
	}
	

	@Override
	public int getTotalCount() { //파라미터 비어있기 때문에 
		Integer totalCount=sqlSession.selectOne(NAMESPACE+".getTotalCount");  //하나짜리 쓰기.. int는 null을 못갖고 오지만 Integer는 null을 갖고올수 있어서
		if(totalCount==null) totalCount=0; //서비스 처음 런칭할 때 아무도 글을 쓰지 않으면 null이 나오겠지 그 때는 어떻게 해주겠다!
		return totalCount;
	}

	@Override
	public int checkId(String id) {
		// TODO Auto-generated method stub
		int rowcount;
		String checkId = sqlSession.selectOne(NAMESPACE+".checkId", id);
		if(checkId==null) {
			rowcount = 0;
		}else {
			rowcount = 1;
		}
		return rowcount;
	}

	@Override
	public int checkEmail(String email) {

		int rowcount;
		String checkEmail = sqlSession.selectOne(NAMESPACE+".checkEmail", email);
		if(checkEmail == null) {
			rowcount = 0;
		}else {
			rowcount = 1;
		}
		return rowcount;
	}

	@Override
	public MemberVO loginUserInfo(MemberVO vo) {
		// TODO Auto-generated method stub
		MemberVO result = sqlSession.selectOne(NAMESPACE+".loginUserInfo",vo);
		return result;
	}

}
