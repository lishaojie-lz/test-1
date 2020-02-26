package com.bw.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bw.entity.Shop;
import com.bw.service.ShopService;
import com.bw.vo.ShopVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
public class ShopController {

	@Resource
	private ShopService service;
	
	
	@RequestMapping("list")
	public Object list(Model m,ShopVo sVo){
		if(sVo.getPageNum()==null||"".equals(sVo.getPageNum())){
			sVo.setPageNum(1);
		}
		System.out.println("进入");
		PageHelper.startPage(sVo.getPageNum(), 2);
		List<Shop> list = service.list(sVo);
		PageInfo<Shop> page = new PageInfo<Shop>(list);
		
		m.addAttribute("sVo", sVo);
		m.addAttribute("page", page);
		 
		return "list";
		
	}
	
	@RequestMapping("toAdd")
	public Object toAdd(){
		
		return "add";
		
	}
	//添加
		@ResponseBody
		@RequestMapping("add")
		public Object  add(Shop shop){
		
			System.out.println("数据是:"+shop);
			
			boolean msg = service.add(shop);
			
			System.out.println("返回结果是:"+msg);
			return msg;
		}

}
