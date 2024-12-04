package com.qd07;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qd07.dao.ScoreDao;
import com.qd07.dto.ScoreDto;

@Controller
public class MainController {
	
	@Autowired
	ScoreDao scoreDao;
	
	// 성적 리스트
	@GetMapping("/")
	public String root(Model model) {
		model.addAttribute("list", scoreDao.mtdList());
		return "list";
	}
	
	// 수험결과 입력
	@GetMapping("/resIns")
	public String resIns() {
		return "resIns";
	}
	
	// 수험결과 입력 처리
	@RequestMapping("/resInsProc")
	public String resInsProc(ScoreDto scoreDto) {
		double avg = (scoreDto.getKorScore() + scoreDto.getHstoryScore() ) / 2.0;
		System.out.println("avg : " + avg);
		scoreDto.setAvgScore(avg);
		scoreDao.mtdInsert(scoreDto);
		
		return "redirect:/";
	}
	
	// 평균 석차 리스트
	@GetMapping("/avgList")
	public String avgList(Model model) {
		model.addAttribute("list", scoreDao.mtdAvgList());
		return "avgList";
	}
	
	// 수험 정보 상세보기
	@RequestMapping("/desc")
	public String desc(
			@RequestParam("regNum") String regNum,
			Model model
			) {
		
		model.addAttribute("data", scoreDao.mtdDesc(regNum));
		
		return "desc";
	}
	
	// 수험 정보 수정하기
	@RequestMapping("/modify")
	public String modify(
			@RequestParam("regNum") String regNum,
			Model model) {
		
		model.addAttribute("data", scoreDao.mtdDesc(regNum));
		
		return "modify";
	}
	
	// 수험 정보 수정하기 처리
	@RequestMapping("/resModifyProc")
	public String resModifyProc(
			ScoreDto scoreDto,
			RedirectAttributes redAttr
			) {
		
		double avg = (scoreDto.getKorScore() + scoreDto.getHstoryScore() ) / 2.0;
		scoreDto.setAvgScore(avg);
		
		scoreDao.mtdModify(scoreDto);
		
		redAttr.addAttribute("regNum", scoreDto.getRegNum());
		return "redirect:/desc";
	}
	
	// 수험 정보 삭제 처리
	@RequestMapping("/delete")
	public String delete(@RequestParam("regNum") String regNum) {
		scoreDao.mtdDelete(regNum);
		return "redirect:/";
	}
	
}
