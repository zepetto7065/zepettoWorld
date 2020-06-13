package com.zepetto.world.service;

import java.util.List;

import com.zepetto.world.domain.BoardVO;
import com.zepetto.world.domain.SearchCriteria;

public interface BoardService {
	
	void create(BoardVO vo);
	BoardVO read(Integer bno);
	List<BoardVO> listAll(String boardType);
	void update(BoardVO vo);
	void delete(int bno);
	int getTotalCount(SearchCriteria searchCriteria);
	List<BoardVO> listCriteria(SearchCriteria cri);
	
	
	
}
