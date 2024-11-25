package com.exam.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	// Model Interface로 사용하는 방법
	@RequestMapping("/test1")
	public String test1(Model model) {
//		ModelAndView mav = new ModelAndView();
		// 모델을 처리하는 방법은 두가지, Model 인터페이스 사용 또는 ModelAndView 클래스 사용
		// 모델 인터페이스를 메서드의 매개변수로 만들거나, 모델앤드뷰의 객체를 생성해 사용하거나
		// 두 방법을 동시에 쓰지는 않지만 동시에 써도 오류가 나지는 않음
		
//		아래 방식은 DI 아님!!! model의 사용법 익히기 용
//		model.addAttribute("키", "값");
		model.addAttribute("name", "딸기");
		
		return "test1";		// view 이름 반환
	}
	
	// ModelAndView를 사용하는 방법
	@RequestMapping("/mv")
	public ModelAndView test2() { 	// 반환자료형인 ModelAndVeiw
		
		ModelAndView mv = new ModelAndView();
		
		List<String> objList = new ArrayList<>();
		objList.add("딸기");
		objList.add("귤");
		objList.add("수박");
		
		
		mv.addObject("lists", objList);
		
		mv.addObject("ObjectTest", "점검용 텍스트");
		mv.addObject("name", "테스터2");
		mv.setViewName("subDir/sampleView");	// setViewName 메서드로 view 이름 지정
		
		return mv;		// ModelAndView 객체 반환
	}
}
