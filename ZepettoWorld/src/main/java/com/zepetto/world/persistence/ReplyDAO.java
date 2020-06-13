package com.zepetto.world.persistence;

import java.util.List;

import com.zepetto.world.domain.Criteria;
import com.zepetto.world.domain.ReplyVO;

public interface ReplyDAO {
	
	List<ReplyVO> list(Integer bno) throws Exception;
	
	void create(ReplyVO replyVO) throws Exception;
	
	void update(ReplyVO replyVO) throws Exception;
	
	void delete(Integer replyNo) throws Exception;
	
	List<ReplyVO> listPaging(Integer bno, Criteria criteria) throws Exception;
	
	int countReply(Integer bno) throws Exception;
	
	int getBno(Integer replyNo) throws Exception;
	
}
