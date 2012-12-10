package com.ebay.nearby.database.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "timeinterval")
public class TimeInterval {
	private int id;
	private int quantity1;
	private int quantity2;
	private int quantity3;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQuantity1() {
		return quantity1;
	}
	public void setQuantity1(int quantity1) {
		this.quantity1 = quantity1;
	}
	public int getQuantity2() {
		return quantity2;
	}
	public void setQuantity2(int quantity2) {
		this.quantity2 = quantity2;
	}
	public int getQuantity3() {
		return quantity3;
	}
	public void setQuantity3(int quantity3) {
		this.quantity3 = quantity3;
	}	
	
}
