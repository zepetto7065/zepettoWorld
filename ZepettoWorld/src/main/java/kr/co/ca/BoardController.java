package kr.co.ca;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.co.domain.BoardVO;
import kr.co.domain.Criteria;
import kr.co.domain.PageMaker;
import kr.co.domain.SearchCriteria;
import kr.co.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	@Inject
	private BoardService boardService;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

		
	@RequestMapping(value = "listall", method = RequestMethod.GET)
	public void listCriteria(@ModelAttribute("searchCriteria") SearchCriteria searchCriteria,String boardType, Model model) {
		
		logger.info("listCriteria called...........");
		System.out.println(boardType+"::::::::::::boardType");
		searchCriteria.setBoardType(boardType);
		
		PageMaker pageMaker = new PageMaker();  // 하단 페이징 숫자 보이기
		pageMaker.setCriteria(searchCriteria);
		
		pageMaker.setTotalCount(boardService.getTotalCount(searchCriteria)); //db에서 가져와야 함
		
		model.addAttribute("list", boardService.listCriteria(searchCriteria));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("boardType", boardType);
	}
	
	@RequestMapping(value = "listallPortlet", method = RequestMethod.GET)
	public String listCriteriaPortlet(SearchCriteria searchCriteria, Model model, String boardType) {
		
		model.addAttribute("list", boardService.listAll(boardType));
		return "/portlet/listall";
	}
	 
	@RequestMapping(value = "read")
	public void read(@RequestParam("bno") int bno,@ModelAttribute("searchCriteria") SearchCriteria searchCriteria ,Model model,String boardType) {
		BoardVO vo = boardService.read(bno);
		vo.setBoardType(boardType);
		model.addAttribute("vo", vo);
	}
	
	@RequestMapping(value = "readPopup")
	public String readPopup(@RequestParam("bno") int bno, Model model) {
		BoardVO vo = boardService.read(bno);
		model.addAttribute("vo", vo);
		return "/popup/read";
	}

	@RequestMapping(value = "create", method = RequestMethod.GET)
	public void createGet(String boardType,Model model) {
		model.addAttribute("type",boardType);
	}

	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String createPost(BoardVO vo, RedirectAttributes rttr) {

		vo.setBoardType(vo.getBoardType());
		boardService.create(vo);

		rttr.addFlashAttribute("msg", "INSERT_SUCCESS");

		return "redirect:/board/listall?boardType="+vo.getBoardType();
	}
	
	@RequestMapping(value="update", method=RequestMethod.GET) 
	public void update(@RequestParam("bno") int bno, Model model, @ModelAttribute("searchCriteria") SearchCriteria searchCriteria) {
		model.addAttribute("vo", boardService.read(bno));	
	}
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(BoardVO vo, RedirectAttributes rttr ,@ModelAttribute("searchCriteria") SearchCriteria searchCriteria) {
		boardService.update(vo);
		rttr.addFlashAttribute("page", searchCriteria.getPage());
		rttr.addFlashAttribute("perPageNum", searchCriteria.getPerPageNum());
		rttr.addFlashAttribute("searchType", searchCriteria.getSearchType());
		rttr.addFlashAttribute("keyword", searchCriteria.getKeyword());
		return "redirect:/board/listall";
	}

	@RequestMapping(value="delete", method=RequestMethod.POST)
	public String delete(@RequestParam("bno") int bno, @ModelAttribute("searchCriteria") SearchCriteria searchCriteria, RedirectAttributes rttr ) { 
		boardService.delete(bno);
		
		rttr.addFlashAttribute("page", searchCriteria.getPage());
		rttr.addFlashAttribute("perPageNum", searchCriteria.getPerPageNum());
		rttr.addFlashAttribute("searchType", searchCriteria.getSearchType());
		rttr.addFlashAttribute("keyword", searchCriteria.getKeyword());
		return "redirect:/board/listall";
	}

}
