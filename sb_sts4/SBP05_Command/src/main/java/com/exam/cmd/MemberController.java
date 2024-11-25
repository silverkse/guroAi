package com.exam.cmd;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MemberController {

	
	@RequestMapping("/")
	public /*@ResponseBody*/ String index(Model model) { 	// @ResponseBody view를 만들지 않았을 때 확인용, return의 내용을 문자열로 출력해서 보여 줌
		
		return "/index";
	}
	
//	@RequestMapping("/req")
//	public String mtdReq(
//			HttpServletRequest req,
//			Model model
//			) {
//		
//		String uid = null;
//		String uname = null;
//		
//		try {
//			req.setCharacterEncoding("UTF-8");
//			uid = req.getParameter("uid");
//			uname = req.getParameter("uname");
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//		
//		model.addAttribute("uid", uid);
//		model.addAttribute("uname", uname);
//		
//		return "mtdReq";
//	}
	
//	@RequestMapping("/req")
//	public ModelAndView mtdReq(HttpServletRequest req) {
//		
//		ModelAndView mv = new ModelAndView();
//		
//		String uid = null;
//		String uname = null;
//		
//		try {
//			req.setCharacterEncoding("UTF-8");
//			uid = req.getParameter("uid");
//			uname = req.getParameter("uname");
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//		
//		mv.addObject("uid", uid);
//		mv.addObject("uname", uname);
//		mv.setViewName("mtdReq");
//		
//		return mv;
//	}
	
	// 매개변수에 @RequestParam 애너테이션을 사용할 수 있다.
	// @RequestParam("uid")의 값을 String uid에 저장
	@RequestMapping("/req")
	public ModelAndView mtdReq(
			@RequestParam("uid") String uid,
			@RequestParam("uname") String uname
			) {
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("uid", uid);
		mv.addObject("uname", uname);
		mv.setViewName("mtdReq");
		
		return mv;
	}
	
	// 커맨드 객체 사용
	@RequestMapping("/reqCmd")
	public String mtdReqCmd(Member member) {
		
		return "mtdReq";
	}
}
