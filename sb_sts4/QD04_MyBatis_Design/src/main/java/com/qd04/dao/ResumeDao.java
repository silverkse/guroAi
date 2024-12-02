package com.qd04.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ResumeDao {
	
	// 지원 등록
	public int mtdRegProc(Map<String, String> map);
	
}
