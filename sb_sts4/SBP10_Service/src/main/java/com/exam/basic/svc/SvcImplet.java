package com.exam.basic.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.basic.dao.BoardDao;
import com.exam.basic.dto.BoardDto;

//@Service, @Controller 처럼 인수를 받아 추가적인 기능을 하지 않는 것을 대체로 스테레오타입이라고 한다.
@Service
public class SvcImplet implements SvcInface {
	
	@Autowired
	private BoardDao boardDao;
	
	@Override
	public List<BoardDto> svcList() {
		
//		List<BoardDto> list =  boardDao.daoBoardList();
//		return list;
		return boardDao.daoBoardList();
	}
	
}
