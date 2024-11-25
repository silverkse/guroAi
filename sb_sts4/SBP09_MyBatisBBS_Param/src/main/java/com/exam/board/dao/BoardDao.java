package com.exam.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.exam.board.dto.BoardDto;

@Mapper
public interface BoardDao {
	
	// 전체 게시물 조회
	public List<BoardDto> mtdBoardList();
	
	// 특정 게시물 조회
	public BoardDto mtdBoardView(int num);
	
	// 게시글 입력
//	public int mtdBoardWrite(@Param("_user")String writer, String title, String content);
	public int mtdBoardWrite(Map<String, String> map);
	
	// 게시글 삭제
	public int mtdBoardDelete(int num);
	
	// 게시글 수 조회
	public int mtdArticleCnt();
}
