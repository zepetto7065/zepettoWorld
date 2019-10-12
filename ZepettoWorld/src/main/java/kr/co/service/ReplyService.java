package kr.co.service;

import java.util.List;

import kr.co.domain.Criteria;
import kr.co.domain.ReplyVO;

public interface ReplyService {

			List<ReplyVO> list(Integer bno) throws Exception;
	
			void create(ReplyVO replyVO) throws Exception;
			
			void update(ReplyVO replyVO) throws Exception;
			
			void delete(Integer replyNo) throws Exception;
			
			List<ReplyVO> listPaging(Integer bno,Criteria criteria) throws Exception;
			
			int countReplies(Integer bno) throws Exception;
}
