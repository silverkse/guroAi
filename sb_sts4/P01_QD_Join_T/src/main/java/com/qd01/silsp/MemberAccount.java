package com.qd01.silsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qd01.test.Sample;

@Controller
public class MemberAccount {
	
	@Autowired
	private Sample sample;
	
	@RequestMapping("signup")
	public String mtdJoin() {
		
		sample.mtd();
		
		return "/member/join";
	}
	
}
