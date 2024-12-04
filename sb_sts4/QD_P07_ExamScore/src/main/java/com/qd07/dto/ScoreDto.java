package com.qd07.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ScoreDto {
	
	private int num;
	private String regNum;
	private String regName;
	private int korScore;
	private int hstoryScore;
	private String regPhone;
	private Timestamp regTM;
	private double avgScore;
	
}
