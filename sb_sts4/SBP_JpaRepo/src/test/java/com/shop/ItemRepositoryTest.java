package com.shop;

import static org.junit.jupiter.api.Assertions.*;

import java.time.LocalDateTime;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

import com.shop.constant.ItemSellStatus;
import com.shop.entity.Item;
import com.shop.repo.ItemRepository;

@SpringBootTest
@TestPropertySource(locations = "classpath:application-test.properties")	// Test에 사용할 용도로 만든 properties의 이름을 지정
class ItemRepositoryTest {
	
	@Autowired
	private ItemRepository itemRepository;
	
	@Test
	@DisplayName("상품 저장 테스트")
	
	void test() {	// 자동 생성되는 메서드 꼭 test()로 사용해야 함.
		Item item = new Item();
		item.setItemNm("테스트 상품");
		item.setPrice(30000);
		item.setItemDetail("테스트 상품 상세보기");
		item.setItemSellStatus(ItemSellStatus.SELL);
		item.setStockNumber(50);
		item.setRegTime(LocalDateTime.now());
		item.setUpdateTime(LocalDateTime.now());
		
		Item savedItem = itemRepository.save(item);
		
		System.out.println(savedItem.toString());
//		fail("Not yet implemented");
	}

}
