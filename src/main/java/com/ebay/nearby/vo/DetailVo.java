package com.ebay.nearby.vo;

import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.service.imp.ProductDaoImp;

public class DetailVO {
	private String title;
	private String price;
	private String titleImg;
	private String detailImg;
	private int quantity1;
	private int quantity2;
	private int quantity3;
	private String sellerName;
	private String isTopSeller;
	private String detail;
	private String locationName;
	private double productLatitude;
	private double productLongitude;
	private String productBrand;
	private String type;
	private String avalibleDateStart;
	private String avalibleDateEnd;
	private int soldQuantities;
	
	public DetailVO(int id) {
		Product product = findProductById(id);
		if(product!=null){
			this.title = product.getTitle();
			this.price = product.getPrice();
			this.titleImg = product.getImgUrl();
			this.detailImg = product.getImgUrlBig();
			this.quantity1 = product.getInterval().getQuantity1();
			this.quantity2 = product.getInterval().getQuantity2();
			this.quantity3 = product.getInterval().getQuantity3();
			this.sellerName = product.getSeller().getName();
			this.isTopSeller = product.getSeller().isTopSeller() ? "Yes":"No";
			this.detail = product.getDetail();
			this.locationName = product.getLocation().getName();
			this.productLatitude = product.getLocation().getLatitude();
			this.productLongitude = product.getLocation().getLongitude();
			this.productBrand = product.getProductBrand();
			this.type = product.getType();
			this.avalibleDateStart = product.getAvalibleDateStart();
			this.avalibleDateEnd = product.getAvalibleDateEnd();
			this.soldQuantities = product.getSoldQuantities();
		}
		
	}
	
	public static Product findProductById(int id) {
		ProductDao productService = new ProductDaoImp();
		Product product = productService.findProductById(id);
		return product;
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

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	public String getDetailImg() {
		return detailImg;
	}

	public void setDetailImg(String detailImg) {
		this.detailImg = detailImg;
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

	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}

	public String getIsTopSeller() {
		return isTopSeller;
	}

	public void setIsTopSeller(String isTopSeller) {
		this.isTopSeller = isTopSeller;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getLocationName() {
		return locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	public double getProductLatitude() {
		return productLatitude;
	}

	public void setProductLatitude(double productLatitude) {
		this.productLatitude = productLatitude;
	}

	public double getProductLongitude() {
		return productLongitude;
	}

	public void setProductLongitude(double productLongitude) {
		this.productLongitude = productLongitude;
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
