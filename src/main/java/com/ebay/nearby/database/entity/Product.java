package com.ebay.nearby.database.entity;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name = "product")
public class Product {
	private int id;
	private String title;
	private String price;
	private Location location;
	private String imgUrl;
	private String imgUrlBig;
	private Seller seller;
	private String detail;
	private TimeInterval interval;
	private String productBrand;
	private String type;
	private String avalibleDateStart;
	private String avalibleDateEnd;
	private int soldQuantities;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	 @OneToOne
	 @Cascade(value = {CascadeType.SAVE_UPDATE})
	public Location getLocation() {
		return location;
	}
	public void setLocation(Location location) {
		this.location = location;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getImgUrlBig() {
		return imgUrlBig;
	}
	public void setImgUrlBig(String imgUrlBig) {
		this.imgUrlBig = imgUrlBig;
	}
	
	@OneToOne
	@Cascade(value = {CascadeType.SAVE_UPDATE})
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	
	@Column(length = 16777216)
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	@OneToOne
	@Cascade(value = {CascadeType.ALL})
	public TimeInterval getInterval() {
		return interval;
	}
	public void setInterval(TimeInterval interval) {
		this.interval = interval;
	}
	public String getProductBrand() {
		return productBrand;
	}
	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAvalibleDateStart() {
		return avalibleDateStart;
	}
	public void setAvalibleDateStart(String avalibleDateStart) {
		this.avalibleDateStart = avalibleDateStart;
	}
	public String getAvalibleDateEnd() {
		return avalibleDateEnd;
	}
	public void setAvalibleDateEnd(String avalibleDateEnd) {
		this.avalibleDateEnd = avalibleDateEnd;
	}
	public int getSoldQuantities() {
		return soldQuantities;
	}
	public void setSoldQuantities(int soldQuantities) {
		this.soldQuantities = soldQuantities;
	}
	
	

}
