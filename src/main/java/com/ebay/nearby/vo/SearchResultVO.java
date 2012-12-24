package com.ebay.nearby.vo;

import java.util.List;

import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.service.imp.ProductDaoImp;

public class SearchResultVO {
	private List<Product> products;
	private String interest;

	public SearchResultVO(String interest, Location location) {
		products = SearchResultVO.findProudcts(interest, location);
		this.interest = interest;
	}
	
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public String getInterest() {
		return interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
	}

	public static List<Product> findProudcts(String interest, Location location) {
		ProductDao productService = new ProductDaoImp();
		return productService.findProductsByKeyWords(interest, location);
	}
}
