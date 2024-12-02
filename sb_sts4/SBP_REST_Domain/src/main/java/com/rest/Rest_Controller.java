package com.rest;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rest.domain.User;

@RestController		// 어노테이션과 클래스의 이름이 같으면 좀 다르게 import 됨
public class Rest_Controller {

	// GET: Select
	@GetMapping("restEx")
	public User restExGet() {
		
		User selUser = User.builder()
				.num(1)
				.userid("lemon")
				.password("1234")
				.email("lemon@naver.com")
				.build();
		
		return selUser;
	}
	
//	// POST: Insert
//	@PostMapping("restEx")
//	public String restExPost(User user) {
//		
//		return "POST 요청 처리 입력 값 : " + user.toString();
//	}
	
	// POST: Insert
	@PostMapping("restEx")
	public String restExPost(@RequestBody User user) {
		
		return "POST 요청 처리 입력 값(JSON) : " + user.toString();
	}
	
//	// PUT: Update
//	@PutMapping("restEx")
//	public String restExPut() {
//		return "PUT 요청 처리3";
//	}
	
	// POST: Insert
	@PutMapping("restEx")
	public String restExPut(@RequestBody User user) {
		
		return "PUT 요청 처리 입력 값(JSON) : " + user.toString();
	}
	
	// Delete: Delete
	@DeleteMapping("restEx")
	public String restExDelete(@RequestParam("num") int num) {
		return "DELETE 요청 처리 입력 값 : " + num;
	}
	
}
