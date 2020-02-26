package com.bw.entity;

import java.io.Serializable;

public class Type implements Serializable{
		Integer	id;
		
		String type;
		
		
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
}
