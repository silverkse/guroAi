package com.rest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SampleController {
	
	@GetMapping("test2")
	public @ResponseBody String mtd1() {
		return "lemon222";
	}
	
	@PostMapping("test2")
	public @ResponseBody String mtd2() {
		return "apple222";
	}
	
	@GetMapping("/images")
	public String images() {
		System.out.println("이미지 파일 요청");
		return "redirect:images/logo.png";
	}
	
	@GetMapping("/sample")
	public String sample() {
		System.out.println("html 파일 요청");
		return "redirect:sample.html";
	}
	
	@GetMapping("/test")
	public String test(Model model) {
		System.out.println("JSP 파일 요청");
		model.addAttribute("testName", "test.jsp");
		return "test";
	}
	
}
