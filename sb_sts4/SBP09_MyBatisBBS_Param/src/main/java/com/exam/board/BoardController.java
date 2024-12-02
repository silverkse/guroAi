package com.exam.board;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.board.dao.BoardDao;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class BoardController {

	@Autowired
	private BoardDao boardDao;
	
	
	// 루트 패턴(리다이렉트 = 페이지 이동)
	@RequestMapping("/")
	public String root() throws Exception {
		return "redirect:boardList";
//		redirect:패턴명 /가 실행되지만, boardList 패턴으로 바로 redirect 해준다.
	}
	
	// 게시판 목록 보기
	@RequestMapping("/boardList")
	public String boardList(Model model) {
		model.addAttribute("mtdBoardList", boardDao.mtdBoardList());
		int articleCnt = boardDao.mtdArticleCnt();
		model.addAttribute("articleCnt", articleCnt);
		return "boardList";
	}
	 
	// 게시판 글쓰기
	@RequestMapping("writeForm")
	public String writeForm() {
		 return "writeForm";
	}
	
	// 게시글 저장
	@RequestMapping("/boardWrite")
	public String boardWrite(HttpServletRequest req, Model model) {
		
		try {
			req.setCharacterEncoding("UTF-8");
			String writer = req.getParameter("writer");
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			
//			boardDao.mtdBoardWrite(writer, title, content);
			
			Map<String, String> map = new HashMap<>();
			map.put("item1", writer);
			map.put("item2", title);
			map.put("item3", content);
			boardDao.mtdBoardWrite(map);
			
		} catch (UnsupportedEncodingException e) {
			System.out.println("/boardWrite 패턴 오류 : " + e.getMessage());
		}
		
		
		return "redirect:boardList";
	}
	
	// 특정 게시물 조회
	@RequestMapping("boardView")
	public String boardView(HttpServletRequest req, Model model) {
		
		try {
			req.setCharacterEncoding("UTF-8");
			int num = Integer.parseInt(req.getParameter("num"));
			model.addAttribute("mtdBoardView", boardDao.mtdBoardView(num));
			
		} catch (UnsupportedEncodingException e) {
			System.out.println("/boardView 패턴 오류 : " + e.getMessage());
		}
		
		return "boardView";
	}
	
	// 특정 게시물 삭제
	@RequestMapping("mtdBoardDelete")
	public String boardDelete(HttpServletRequest req) {
		
		try {
			req.setCharacterEncoding("UTF-8");
			int num = Integer.parseInt(req.getParameter("num"));
			boardDao.mtdBoardDelete(num);
			
		} catch (UnsupportedEncodingException e) {
			System.out.println("/mtdBoardDelete 패턴 오류 : " + e.getMessage());
		}
		
		return "redirect:boardList";
	}
}