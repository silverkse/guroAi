package com.qd07.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.qd07.dto.ScoreDto;

@Mapper
public interface ScoreDao {
	
	// 성적 입력
	public void scoreIns(Map<String, String> map);

	// 성적 리스트
	public List<ScoreDto> scoreList();

	// 성적 상세보기
	public ScoreDto scoreDetail(String num);
	
	
	// 수험결과 수정하기 실행
	public void scoreModProc(Map<String, String> map);

	// 삭제하기
	public void scoreDelProc(String num);
	
	// 평균 석차 보기
	public List<ScoreDto> avgList();
	
}
