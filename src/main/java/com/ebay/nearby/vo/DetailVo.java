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
	private String test;
	
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
		}
		
	}
	
	public static Product findProductById(int id) {
		ProductDao productService = new ProductDaoImp();
		Product product = productService.findProductById(id);
		return product;
	}

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}
	
}
