package com.exam.ctrler;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.exam.dto.SampleDto;

@Controller
public class FrontController {
	
	@RequestMapping({"/", ""})
	@ResponseBody
	public String index() {
		return "메인입니다!";
	}
	
	@RequestMapping("/sample")
	public String mtdSample(Model model) {
		
//		SampleDto dto = new SampleDto();
//		dto.setNum(21);
//		dto.setTxt("키위");
//		
//		model.addAttribute("dtoData", dto);
//		model.addAttribute("data1", "50");
		
		List<Integer> list = new ArrayList<>();
		list.add(6);
		list.add(22);
		list.add(7);
		list.add(-40);
		model.addAttribute("listData", list);
		
		return "/sample";
	}
	
	@RequestMapping("/second")
	public String mtdSecond() {
		return "/sub/second";
	}
	
	
}
