package com.qd04;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qd04.dao.ResumeDao;

@Controller
public class ResumeController {
	
	@Autowired
	private ResumeDao resumeDao;
	
	@RequestMapping("/reg")
	public String mtdReg(
			@RequestParam(value="rName") String rName,
			@RequestParam(value="phone") String phone,
			@RequestParam(value="field") String field,
			@RequestParam(value="motive") String motive,
			Model model
			) {
		
		Map<String, String> map = new HashMap<>();
		map.put("rName", rName);
		map.put("phone", phone);
		map.put("field", field);
		map.put("motive", motive);
		
		resumeDao.mtdRegProc(map);
		
		model.addAttribute("dataList", map);
		
		return "/regRes";
	}
	
}
