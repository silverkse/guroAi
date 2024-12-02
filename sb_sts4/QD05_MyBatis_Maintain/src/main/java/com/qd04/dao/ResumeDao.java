package com.qd04.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.qd04.dto.ResumeDto;

@Mapper
public interface ResumeDao {
	
	// 지원 등록
	public int mtdRegProc(Map<String, String> map);
	
	// 지원 목록 출력
	public List<ResumeDto> mtdList();
	
	// 지원 내역 상세
	public ResumeDto mtdDescView(@Param("num") int num);
	
	// 지원 내역 수정
	public int mtdModiProc(Map<String, String> map);
}
