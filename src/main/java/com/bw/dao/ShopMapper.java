package com.bw.dao;

import java.util.List;

import com.bw.entity.Shop;
import com.bw.vo.ShopVo;

public interface ShopMapper {

	List<Shop> list(ShopVo sVo);

	int add(Shop shop);

}
