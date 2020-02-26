package com.bw.entity;

import java.io.Serializable;

public class Brand implements Serializable{
	Integer id;
	String brand;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
}
