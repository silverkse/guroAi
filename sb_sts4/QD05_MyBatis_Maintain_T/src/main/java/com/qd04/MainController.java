package com.qd04;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qd04.dao.ApplyDao;
import com.qd04.dto.ApplyDto;

@Controller
public class MainController {
	
	@Autowired
	private ApplyDao applyDao;
	
	@RequestMapping("/")
	@ResponseBody
	public String root() throws Exception {
		return "개발자 지원서 작업";
	}
	
	// 지원서 입력양식
	@RequestMapping("/applyForm")
	public String applyForm() {
		return "applyForm";
	}
	
	// 지원서 DB 입력처리
	@RequestMapping("/applyProc")
	public String applyProc(
			@RequestParam(value="userName") String userName,
			@RequestParam(value="userPhone") String userPhone,
			@RequestParam(value="applyPart") String applyPart,
			@RequestParam(value="applyMotive") String applyMotive,
			RedirectAttributes redAttr
			) {
		
		Map<String, String> map = new HashMap<>();
		map.put("userName", userName);
		map.put("userPhone", userPhone);
		map.put("applyPart", applyPart);
		map.put("applyMotive", applyMotive);
		
		applyDao.mtdRegProc(map);
		
		redAttr.addAttribute("userName", userName);
		redAttr.addAttribute("userPhone", userPhone);
		redAttr.addAttribute("applyPart", applyPart);
		redAttr.addAttribute("applyMotive", applyMotive);
		
		return "redirect:/list";
	}
	
	// 목록출력
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("mtdList", applyDao.mtdList());
		return "list";
	}
	
	// 리스트 내용 상세보기(= 뷰 보기)
	@RequestMapping("/view")
	public String result(
			@RequestParam(value="numParam") String numParam,
			Model model
			) {
		
		ApplyDto applyDto = applyDao.mtdView(numParam);
		
		model.addAttribute("applyDto", applyDto);
		
		return "view";
	}
	
	
}
