package com.qd02.send;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Member {
	
	@RequestMapping("/")
	public @ResponseBody String mtd() {
		return "패턴을 입력해 이동해주세요";
	}
	
	@RequestMapping("/send")
	public String mtdLogin() {
		
		return "/mem/login";
	}
	
	@RequestMapping("receive")
	public ModelAndView mtdLoginProc(HttpServletRequest req) {
		
		ModelAndView mv = new ModelAndView();
		
		try {
			req.setCharacterEncoding("UTF-8");
			
		} catch (Exception e) {
			System.out.println("컨트롤러 receive 패턴 오류 : " + e.getMessage());
		}
		
		mv.addObject("email", req.getParameter("email"));
		mv.addObject("upw", req.getParameter("upw"));
		mv.setViewName("/mem/loginProc");
		
		return mv;
	}
	
	@RequestMapping("join")
	public String mtdJoin() {
		return "mem/join";
	}
	
	@RequestMapping("joinProc")
	public String mtdJoinProc(
			@RequestParam String email,
			@RequestParam String upw,
			Model model
			) {
		
		model.addAttribute("email", email);
		model.addAttribute("upw", upw);
		
		return "/mem/joinProc";
	}
}
