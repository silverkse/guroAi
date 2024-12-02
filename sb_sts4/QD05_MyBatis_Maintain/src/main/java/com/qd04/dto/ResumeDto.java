package com.qd04.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ResumeDto {
	
	private int num;
	private String userName;
	private String phone;
	private String field;
	private String motive;
	private Timestamp regTM;
	
}
