package com.qd07.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ScoreDto {
	
	private int num;
	private String code; 
	private String userName;
	private int kor; 
	private int history; 
	private String phone;
	private Timestamp regTM; 
	private double avg;
	
}
