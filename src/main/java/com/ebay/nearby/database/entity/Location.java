package com.ebay.nearby.database.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "location")
public class Location {
	private int id;
	private String name;
	private double l;
	private double w;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getL() {
		return l;
	}
	public void setL(double l) {
		this.l = l;
	}
	public double getW() {
		return w;
	}
	public void setW(double w) {
		this.w = w;
	}
}
