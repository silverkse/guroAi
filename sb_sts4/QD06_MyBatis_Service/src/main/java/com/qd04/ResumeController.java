package com.qd04;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qd04.dao.ResumeDao;
import com.qd04.dto.ResumeDto;

@Controller
public class ResumeController {
	
	@Autowired
	private ResumeDao resumeDao;
	
	// 지원서 처리
	@RequestMapping("/reg")
	public String mtdReg(
			@RequestParam(value="userName") String userName,
			@RequestParam(value="phone") String phone,
			@RequestParam(value="field") String field,
			@RequestParam(value="motive") String motive
			) {
		
		Map<String, String> map = new HashMap<>();
		map.put("userName", userName);
		map.put("phone", phone);
		map.put("field", field);
		map.put("motive", motive);
		
		resumeDao.mtdRegProc(map);
				
		return "redirect:/applyList";
	}
	
	// 지원 목록
	@RequestMapping("/applyList")
	public String applyList(Model model) {
		
		List<ResumeDto> list = resumeDao.mtdList();
		model.addAttribute("applyList", list);
		
		return "applyList";
	}
	
	// 지원 내역 상세보기
	@RequestMapping("/descView")
	public String applyString(@RequestParam("num") int num, Model model) {
		
		model.addAttribute("desc", resumeDao.mtdDescView(num));
		
		return "regRes";
	}
	
	// 지원 내역 수정
	@RequestMapping("/regModi")
	public String regModi(@RequestParam("num") int num, Model model) {
		
		model.addAttribute("desc", resumeDao.mtdDescView(num));
		
		return "regModi";
	}
	
	// 지원 내역 수정 처리
	@RequestMapping("/modiProc")
	public String modiProc(ResumeDto dto) {
		Map<String, String> map = new HashMap<>();
		map.put("num", Integer.toString(dto.getNum()));
		map.put("phone", dto.getPhone());
		map.put("field", dto.getField());
		map.put("motive", dto.getMotive());
		
		resumeDao.mtdModiProc(map);
		
		return "redirect:/applyList";
	}
	
}
