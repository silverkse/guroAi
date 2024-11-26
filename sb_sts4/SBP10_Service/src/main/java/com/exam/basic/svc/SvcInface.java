package com.exam.basic.svc;

import java.util.List;

import org.springframework.stereotype.Service;

import com.exam.basic.dto.BoardDto;

public interface SvcInface {
	
	public List<BoardDto> svcList();
	
}
