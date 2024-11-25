package com.qd02.send;

import java.io.UnsupportedEncodingException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qd02.send.command.ApplyCommand;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Member {
	
	// 로그인 매핑
	@RequestMapping("/send")
	public String mtdSend() {
		return "mem/login";
	}
	
	// 로그인 처리 매핑
	@RequestMapping("/receive")
	public String mtdReceive(HttpServletRequest req, Model model) {
		
		try {
			req.setCharacterEncoding("UTF-8"); 	// UnsupportedEncodingException 
			String email = req.getParameter("email");
			String pwd = req.getParameter("pwd");
			
			model.addAttribute("email", email);
			model.addAttribute("pwd", pwd);
			
		} catch(UnsupportedEncodingException e) {
			System.out.println("/receive proc error : " + e.getMessage());
		}
		
		return "/mem/loginProc";
	}
	
	// 회원가입 매핑
	@RequestMapping("/join")
	public String mtdJoin() {
		return "mem/join";
	}
	
	// 회원가입 처리 매핑
	@RequestMapping("/joinProc")
	public String mtdJoinProc(
			@RequestParam(value = "email", required = true) String email,
			@RequestParam("pwd") String pwd,
			@RequestParam(value = "agreeChk", required = false, defaultValue = "0") String agreeChk,
			Model model) {
			
			model.addAttribute("email", email);
			model.addAttribute("pwd", pwd);
			model.addAttribute("agreeChk", agreeChk);

		return "/mem/joinProc";
	}
	
	// 개발자 지원서 매핑
	@RequestMapping("ask")
	public String mtdApply() {
		return "/job/ask";
	}
	
	// 개발자 지원서 처리 매핑
	@RequestMapping("askProc")
	public String mtdApplyProc(ApplyCommand applyCommand) {
		
		return "job/askProc";
	}
}
