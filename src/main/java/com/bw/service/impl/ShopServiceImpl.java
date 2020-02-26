package com.bw.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bw.dao.ShopMapper;
import com.bw.entity.Shop;
import com.bw.service.ShopService;
import com.bw.vo.ShopVo;

@Service
public class ShopServiceImpl implements ShopService{

	@Resource
	private ShopMapper dao;

	@Override
	public List<Shop> list(ShopVo sVo) {
		// TODO Auto-generated method stub
		return dao.list(sVo);
	}

	@Override
	public boolean add(Shop shop) {
		// TODO Auto-generated method stub
		int i =dao.add(shop);
		return i>0;
	}
	
	
}
