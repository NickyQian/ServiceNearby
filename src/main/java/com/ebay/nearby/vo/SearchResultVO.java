package com.ebay.nearby.vo;

import java.util.ArrayList;
import java.util.List;

import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.service.imp.ProductDaoImp;

public class SearchResultVO {
	private List<Product> products = new ArrayList<Product>();
	private List<Product> productsBelow = new ArrayList<Product>();
	private String interest;
	private String test;
	

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public SearchResultVO(String interest, Location location) {
		this.findProudcts(interest, location);
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

	public void findProudcts(String interest, Location location) {
		ProductDao productService = new ProductDaoImp();
		List<Product> proudcts = productService.findProductsByKeyWords(interest, location);
		for(int i = 0;i<2;i++){
			this.products.add(proudcts.get(i));
		}
		for(int i=2;i<proudcts.size();i++){
			this.productsBelow.add(proudcts.get(i));
		}
	}
}
