package com.qd03.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.qd03.dto.GoodsDto;

@Mapper
public interface GoodsDao {
	
	// 전체 상품 조회
	public List<GoodsDto> mtdGoodsList();
	
	// 특정 상품 조회
	public List<GoodsDto> mtdGoodsSearch(@Param("keyword") String keyword);
	
	// 상품 등록
//	public int mtdGoodsReg(String goodsName, String goodsCode, int price, int cnt);
	public int mtdGoodsReg(Map<String, String> map);
	
	// 상품 삭제
	public int mtdGoodsDel(@Param("num") int num);
}
