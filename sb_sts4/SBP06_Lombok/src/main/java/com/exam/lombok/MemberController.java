package com.exam.lombok;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	
	@RequestMapping("/")
	public @ResponseBody String root() {
		return "커맨드를 사용한 패턴을 입력하고 결과를 확인하세요";
	}
	
	@RequestMapping("/reqCmd")
	public String mtdReqCmd(Model model, Goods goods) {
		
		return "dataPrn";
	}
	
}
