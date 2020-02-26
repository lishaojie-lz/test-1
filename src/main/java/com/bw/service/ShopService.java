package com.bw.service;

import java.util.List;

import com.bw.entity.Shop;
import com.bw.vo.ShopVo;

public interface ShopService {

	List<Shop> list(ShopVo sVo);

	boolean add(Shop shop);

}
