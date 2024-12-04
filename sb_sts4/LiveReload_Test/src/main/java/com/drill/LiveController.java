package com.drill;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LiveController {
	
	@RequestMapping("/serverSide")
	public String mtdLive() {
		return "serverSide";
	}
	
}
