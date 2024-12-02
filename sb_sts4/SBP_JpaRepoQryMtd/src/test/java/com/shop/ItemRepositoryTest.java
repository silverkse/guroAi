package com.shop;

import static org.junit.jupiter.api.Assertions.*;

import java.time.LocalDateTime;
import java.util.Iterator;
import java.util.List;

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
	
	public void createItemList() {	
		
		for (int i=1; i<=10; i++ ) {
			
			Item item = new Item();
			item.setItemNm("테스트 상품_" + (i));
			item.setPrice(i * 10000);
			item.setItemDetail("테스트 상품 상세보기_" + i);
			item.setItemSellStatus(ItemSellStatus.SELL);
			item.setStocNumber(50);
			item.setRegTime(LocalDateTime.now());
			item.setUpdateTime(LocalDateTime.now());
			
			Item savedItem = itemRepository.save(item);
			System.out.println(savedItem.toString());
		}
		
	}
	
	@Test
	@DisplayName("상품 조회 테스트")
	public void selectTest() {
		this.createItemList();
		List<Item> itemList = itemRepository.findByItemNm("테스트 상품_2");
		
		for (Item item : itemList) {
			System.out.println(item.toString());
		}
	}
	
	@Test
	@DisplayName("상품명, 상품상세설명 Or 테스트")
	public void findByItemNmOrItemDetailTest( ) {
		this.createItemList( );
		List<Item> itemList = itemRepository.findByItemNmOrItemDetail("테스트 상품1", "테스트 상품 상세보기5");
		for(Item item : itemList) {
			System.out.println(item.toString( ));
			}		
	}

}
