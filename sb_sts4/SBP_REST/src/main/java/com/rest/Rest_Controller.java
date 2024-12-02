package com.rest;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController		// 어노테이션과 클래스의 이름이 같으면 좀 다르게 import 됨
public class Rest_Controller {

	// GET: Select
	@GetMapping("restEx")
	public String restExGet() {
		return "GET 요청 처리1";
	}
	
	// POST: Insert
	@PostMapping("restEx")
	public String restExPost() {
		return "POST 요청 처리2";
	}
	
	// PUT: Update
	@PutMapping("restEx")
	public String restExPut() {
		return "PUT 요청 처리3";
	}
	
	// Delete: Delete
	@DeleteMapping("restEx")
	public String restExDelete() {
		return "DELETE 요청 처리4";
	}
	
}
