package com.shop.entity;

import java.time.LocalDateTime;

import com.shop.constant.ItemSellStatus;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import lombok.Data;

@Entity					// Entity로 사용하겠다는 의미
@Table(name="item")		//item이라는 이름의 테이블을 만들겠다는 의미
@Data
public class Item {
	
	@Id		// primary key 적용
	@Column(name="item_id")		// item_id 라는 이름의 컬럼(필드)으로 생성
	@GeneratedValue(strategy = GenerationType.AUTO)		// auto_increment 속성 추가
	private Long id;						// 상품코드
	
	@Column(nullable = false, length = 50)	// not null, char(50) 설정, name 속성이 없음 -> 변수(필드)명이 그대로 컬럼(필드)명이 된다.
	private String itemNm;					// 상품명
	
	@Column(name="price", nullable = false)	// price라는 이름으로(현재 필드명과 같아 굳이 적을 필요 없음) not null
	private int price;						// 가격
	
	@Column(nullable = false)
	private int stocNumber;					// 재고
	
	@Lob	// Blob, Clob 자료형 == Text 자료형과 유사 / Text는 문자열만 들어갈 수 있고, Blob&Clob은 바이너리코드까지 들어갈 수 있음
	@Column(nullable = false)
	private String itemDetail;				// 제품 상세 설명
	// 바이너리코드가 필요한 경우는 보안, 암호화 등에 의해서인데, 요즘은 java에서 암호화를 진행하기 때문에 db에서 굳이 사용하지 않는 추세라고 한다.
	
	@Enumerated(EnumType.STRING)	
	private ItemSellStatus itemSellStatus;	// 상품 판매 상태
	// 생성한 열거체에 있는 상수 값 만을 컬럼에 데이터로 받겠다는 설정이 된다.
	// fk와 같이 열거체에 있는 값만 데이터로 저장될 수 있다.
	
	private LocalDateTime regTime;			// 등록 시간
	private LocalDateTime updateTime;		// 수정 시간
	// Column은 커스텀 애너테이션이다. 위처럼 Column 애너테이션을 사용하지 않아도, 자료형은 자동적으로 매치되어 생성되고,
	// 나머지 값들은 디폴트 값으로 필드가 생성된다(기본 null 값으로 생성되는 등..)
	
}
