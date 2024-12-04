package com.qd07.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.qd07.dto.ScoreDto;

@Mapper
public interface ScoreDao {
	
	// 성적 리스트 조회
	public List<ScoreDto> mtdList();
	
	// 수험결과 입력
	public void mtdInsert(ScoreDto scoreDto);
	
	// 평균 석차 조회
	public List<ScoreDto> mtdAvgList();
	
	// 수험 정보 상세보기
	public ScoreDto mtdDesc(@Param("regNum") String regNum);
	
	// 수험 결과 수정하기
	public void mtdModify(ScoreDto scoreDto);
	
	// 수험 결과 수정하기
	public void mtdDelete(String regNum);
	
}
