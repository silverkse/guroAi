package com.qd07.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qd07.dto.ScoreDto;
import com.qd07.svc.ScoreSvc;

@Controller
public class ScoreController {
	
	@Autowired
	ScoreSvc scoreSvc;
	
	@RequestMapping("/")
	@ResponseBody()
	public String root() throws Exception {
		return "성적처리";
	}
	
	// 수험결과 입력 양식
	@RequestMapping("/write")
	public String write() {
		return "write";
	}
	
	// 수험결과 입력 처리
	@RequestMapping("/insProc")
	public String insProc(
			@RequestParam("code") String code,
			@RequestParam("userName") String userName,
			@RequestParam("kor") String kor,
			@RequestParam("history") String history,
			@RequestParam("phone") String phone
			) {
		
		Map<String, String> map = new HashMap<>();
		map.put("code", code);
		map.put("userName", userName);
		map.put("kor", kor);
		map.put("history", history);
		map.put("phone", phone);
		
		scoreSvc.scoreIns(map);
		
		return "redirect:list";
	}
	
	// 수험자 성적 리스트
	@RequestMapping("/list")
	public String list(Model model) {
		List<ScoreDto> list = scoreSvc.scoreList();
		model.addAttribute("scoreList", list);
		return "list";
	}
	
	// 수험결과 상세보기
	@RequestMapping("/detail")
	public String detail(@RequestParam("num") String num, Model model) {
		ScoreDto scoreDto = scoreSvc.scoreDetail(num);
		model.addAttribute("detailData", scoreDto);
		return "detail";
	}
	
	// 평균 석차 보기
	@RequestMapping("/avgList")
	public String avgList(Model model) {
		List<ScoreDto> list = scoreSvc.avgList();
		model.addAttribute("scoreAvgList", list);
		return "avgList";
	}
	
	// 수험결과 수정하기 양식
	@RequestMapping("/mod")
	public String mod(@RequestParam("num") String num, Model model) {
		ScoreDto scoreDto = scoreSvc.scoreDetail(num);
		model.addAttribute("detailData", scoreDto);
		return "/mod";
	}
	
	// 수험결과 수정하기 처리
	@RequestMapping("/modProc")
	public String modProc(
			@RequestParam("num") String num,
			@RequestParam("kor") String kor,
			@RequestParam("history") String history,
			@RequestParam("phone") String phone,
			RedirectAttributes redirectAttributes
			) {
		
		Map<String, String> map = new HashMap<>();
		map.put("num", num);
		map.put("kor", kor);
		map.put("history", history);
		map.put("phone", phone);
		
		scoreSvc.scoreModProc(map);
		
		redirectAttributes.addAttribute("num", num);
		
		return "redirect:detail";
	}
	
	// 삭제하기
	@RequestMapping("/delProc")
	public String delProc(@RequestParam("num") String num) {
		scoreSvc.scoreDelProc(num);
		return "redirect:list";
	}
	
}
