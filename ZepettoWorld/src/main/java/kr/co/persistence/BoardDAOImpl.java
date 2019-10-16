package kr.co.persistence;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import kr.co.ca.HomeController;
import kr.co.domain.BoardVO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;
import oracle.net.aso.p;


@Repository
public class BoardDAOImpl implements BoardDAO {

	
	private final String NAMESPACE = "kr.co.ca.BoardMapper";

	@Inject
	private SqlSession sqlSession; // null처럼 보이지만 null이 아님 @Inject 때문에

	@Override
	public List<BoardVO> listAll(String boardType) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".listAll",boardType);
	}
	
	@Override
	public List<BoardVO> listCriteria(SearchCriteria searchCriteria) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+".listCriteria", searchCriteria);
	}

	@Override
	public BoardVO read(Integer bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+".read", bno);
	}
	
	@Override
	public void create(BoardVO vo) {
		// TODO Auto-generated method stub
		
		
		
		
		sqlSession.insert(NAMESPACE+".create", vo);
	}



	@Override
	public void update(BoardVO vo) {
		// TODO Auto-generated method stub

		sqlSession.update(NAMESPACE+".update", vo);
	}

	@Override
	public void delete(int bno) {
		// TODO Auto-generated method stub
		sqlSession.delete(NAMESPACE+".delete", bno);
	}
	

	@Override
	public int getTotalCount(SearchCriteria searchCriteria) { //파라미터 비어있기 때문에 
		Integer totalCount=sqlSession.selectOne(NAMESPACE+".getTotalCount",searchCriteria);  //하나짜리 쓰기.. int는 null을 못갖고 오지만 Integer는 null을 갖고올수 있어서
		if(totalCount==null) totalCount=0; //서비스 처음 런칭할 때 아무도 글을 쓰지 않으면 null이 나오겠지 그 때는 어떻게 해주겠다!
		return totalCount;
	}

	@Override
	public void updateReplyCnt(Integer bno, int amount) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("bno", bno);
		paramMap.put("amount",amount);
		
		sqlSession.update(NAMESPACE+".updateReplyCnt",paramMap);
	}

	@Override
	public void updateViewCnt(Integer bno) {
		// TODO Auto-generated method stub
		sqlSession.update(NAMESPACE+".updateViewCnt",bno);
	}




}
