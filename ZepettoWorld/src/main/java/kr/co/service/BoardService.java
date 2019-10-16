package kr.co.service;

import java.util.List;

import kr.co.domain.BoardVO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;

public interface BoardService {
	
	void create(BoardVO vo);
	BoardVO read(Integer bno);
	List<BoardVO> listAll(String boardType);
	void update(BoardVO vo);
	void delete(int bno);
	int getTotalCount(SearchCriteria searchCriteria);
	List<BoardVO> listCriteria(SearchCriteria cri);
	
	
	
}
