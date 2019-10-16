package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import kr.co.domain.BoardVO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;
import kr.co.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO boardDao;


	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(Integer bno) {
		// TODO Auto-generated method stub
		boardDao.updateViewCnt(bno);
		return boardDao.read(bno);
	}

	@Override
	public List<BoardVO> listAll(String boardType) {

		return boardDao.listAll(boardType);
	}

	@Override
	public void update(BoardVO vo) {
		boardDao.update(vo);

	}

	@Override
	public void delete(int bno) {
		boardDao.delete(bno);
	}

	
	@Override
	public int getTotalCount(SearchCriteria searchCriteria) {

		return boardDao.getTotalCount(searchCriteria);
	}

	@Override
	public void create(BoardVO vo) {
		// TODO Auto-generated method stub
		boardDao.create(vo);
	}

	@Override
	public List<BoardVO> listCriteria(SearchCriteria searchCriteria) {
		return boardDao.listCriteria(searchCriteria);
	}

}
