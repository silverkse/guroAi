package com.qd07.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qd07.dao.ScoreDao;
import com.qd07.dto.ScoreDto;

@Service
public class DBService {
	
	@Autowired
	ScoreDao scoreDao;
	
	// 성적 리스트 조회
	public List<ScoreDto> mtdList() {
		List<ScoreDto> list = scoreDao.mtdList();
		return list;
	};
	
	// 수험결과 입력
	public void mtdInsert(ScoreDto scoreDto) {
		scoreDao.mtdInsert(scoreDto);
	};
	
	// 평균 석차 조회
	public List<ScoreDto> mtdAvgList(){
		List<ScoreDto> list = scoreDao.mtdAvgList();
		return list;
	};
	
	// 수험 정보 상세보기
	public ScoreDto mtdDesc(String regNum) {
		ScoreDto scoreDto = scoreDao.mtdDesc(regNum);
		return scoreDto;
	};
	
	// 수험 결과 수정하기
	public void mtdModify(ScoreDto scoreDto) {
		scoreDao.mtdModify(scoreDto);
	};
	
}
