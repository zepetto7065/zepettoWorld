package com.zepetto.world.persistence;

import java.util.List;

import com.zepetto.world.domain.BoardVO;
import com.zepetto.world.domain.SearchCriteria;

public interface BoardDAO {
	void create(BoardVO vo);
	BoardVO read(Integer bno);
	List<BoardVO> listAll(String boardType);
	void update(BoardVO vo);
	void delete(int bno);
	int getTotalCount(SearchCriteria searchCriteria);
	List<BoardVO> listCriteria(SearchCriteria searchCriteria);
	void updateReplyCnt(Integer bno, int amount);
	void updateViewCnt(Integer bno);
}
