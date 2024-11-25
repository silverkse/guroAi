package com.qd03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qd03.dao.GoodsDao;

@Controller
public class ShopController {
	
	@Autowired
	private GoodsDao goodsDao;
	
	@RequestMapping("/")
	public String root() throws Exception {
		return "redirect:list";
	}
	
	@RequestMapping("/reg")
	public String mtdReg(Model model) {
		model.addAttribute("goodsList", goodsDao.mtdGoodsList()); 
		return "/product/goodsReg";
	}
	
	@RequestMapping("/list")
	public String mtdList(Model model) {
		model.addAttribute("goodsList", goodsDao.mtdGoodsList()); 
		return "/product/goodsList";
	}
	
	@RequestMapping("/search")
	public String mtdSearch(Model model) {
		model.addAttribute("goodsList", goodsDao.mtdGoodsList()); 
		return "/product/goodsList";
	}
	
	@RequestMapping("/del")
	public String mtdDel(Model model) {
		model.addAttribute("goodsList", goodsDao.mtdGoodsList()); 
		return "/product/goodsList";
	}
	
	
}
