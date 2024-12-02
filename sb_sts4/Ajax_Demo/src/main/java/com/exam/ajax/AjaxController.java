package com.exam.ajax;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AjaxController {

	@RequestMapping(
				value="/jsonReq",
				method=RequestMethod.GET, // method=RequestMethod.GET => 겟 방식만 수신한다./ .POST도 가능, GetMapping 사용해도 됨
				produces="application/json;charset=utf8" 	// utf8은 소문자, -없이 작성
			)		// 여기까지가 설정
	public @ResponseBody String mtdAjaxSend(Model model) {
		
		JSONObject jsonObject = new JSONObject();
		
		try {
			jsonObject.put("name", "John");		// put 메서드는 JSONException 처리 필요
			jsonObject.put("age", "30");
		} catch (JSONException e) {
			System.out.println("JsonException : " + e.getMessage());
		}
		
		return jsonObject.toString();
	}
	
	@RequestMapping("/ajaxPrn")
	public String mtdAjaxPrn() {
		return "ajaxPrn";
	}
	
}
