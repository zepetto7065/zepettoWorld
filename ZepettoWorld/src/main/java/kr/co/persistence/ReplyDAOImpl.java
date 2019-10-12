package kr.co.persistence;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.Criteria;
import kr.co.domain.ReplyVO;


@Repository
public class ReplyDAOImpl implements ReplyDAO {

	
	private final String NAMESPACE = "kr.co.ca.ReplyMapper";

	@Inject
	private SqlSession sqlSession; // null처럼 보이지만 null이 아님 @Inject 때문에

	
	@Override
	public List<ReplyVO> list(Integer bno) throws Exception {
		return sqlSession.selectList(NAMESPACE+".list",bno);
	}

	@Override
	public void create(ReplyVO replyVO) throws Exception {
		sqlSession.insert(NAMESPACE+".create",replyVO);
	}

	@Override
	public void update(ReplyVO replyVO) throws Exception {
		sqlSession.update(NAMESPACE+".update",replyVO);
	}

	@Override
	public void delete(Integer replyNo) throws Exception {
		sqlSession.delete(NAMESPACE+".delete",replyNo);
	}

	@Override
	public List<ReplyVO> listPaging(Integer bno, Criteria criteria) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("bno", bno);
		paramMap.put("criteria", criteria);
		
		return sqlSession.selectList(NAMESPACE+".listPaging",paramMap);
	}

	@Override
	public int countReply(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+".countReplies",bno);
	}

	@Override
	public int getBno(Integer replyNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+".getBno",replyNo);
	}




}
