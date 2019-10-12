package kr.co.ca;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.domain.Criteria;
import kr.co.domain.PageMaker;
import kr.co.domain.ReplyVO;
import kr.co.service.ReplyService;

@RestController
@RequestMapping("replies")
public class ReplyController {
	@Inject
	private ReplyService replyService;
	
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);

	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String replyAjaxTest() {
		return "/tutorial/reply_test";
	}

	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ResponseEntity<String> register(@RequestBody ReplyVO replyVO) {
		ResponseEntity<String> entity = null;
		try {
			replyService.create(replyVO);
			entity = new ResponseEntity<>("regSuccess",HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		return entity;
	
	}
	
	@RequestMapping(value = "/all/{bno}", method = RequestMethod.GET)
	public ResponseEntity<List<ReplyVO>> list(@PathVariable("bno") Integer bno) {
		ResponseEntity<List<ReplyVO>> entity = null;
		try {
			entity = new ResponseEntity<List<ReplyVO>>(replyService.list(bno),HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
		
	}
	
	@RequestMapping(value = "/{replyNo}", method = {RequestMethod.PUT,RequestMethod.PATCH})
	public ResponseEntity<String> update(@PathVariable("replyNo") Integer replyNo,@RequestBody ReplyVO replyVO) {
		ResponseEntity<String> entity = null;
		try {
			System.out.println("11111");
			replyVO.setReplyNo(replyNo);
			replyService.update(replyVO);
			entity = new ResponseEntity<>("modSuccess",HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("222222");

			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		return entity;
		
	}
	@RequestMapping(value = "/{replyNo}", method = RequestMethod.DELETE)
	public ResponseEntity<String> delete(@PathVariable("replyNo") Integer replyNo) {
		ResponseEntity<String> entity = null;
		try {
			replyService.delete(replyNo);
			entity = new ResponseEntity<>("delSuccess",HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		return entity;
		
	}
	
	@RequestMapping(value = "/{bno}/{page}", method = {RequestMethod.GET,RequestMethod.POST})
	public ResponseEntity<Map<String, Object>> listPaging(@PathVariable("bno") Integer bno,
			@PathVariable("page") Integer page) {
		ResponseEntity<Map<String, Object>> entity = null;
		try {
			
			Criteria criteria = new Criteria();
			criteria.setPage(page);
			
			List<ReplyVO> replies = replyService.listPaging(bno, criteria);
			int repliesCount = replyService.countReplies(bno);
					
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCriteria(criteria);
			pageMaker.setTotalCount(repliesCount);
			
			Map<String, Object> map = new HashMap<>();
			map.put("replies", replies);
			map.put("pageMaker", pageMaker);
			
			entity = new ResponseEntity<>(map, HttpStatus.OK);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.OK);
		}
		return entity;
		
	}
	
}
