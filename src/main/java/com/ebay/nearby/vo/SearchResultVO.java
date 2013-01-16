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
	
	public List<Product> getProductsBelow() {
		return productsBelow;
	}

	public void setProductsBelow(List<Product> productsBelow) {
		this.productsBelow = productsBelow;
	}

	public String getInterest() {
		return interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
	}

	public void findProudcts(String interest, Location location) {
		ProductDao productService = new ProductDaoImp();
		List<Product> proudctResult = productService.findProductsByKeyWords(interest, location);
		if (proudctResult != null && proudctResult.size()>0){
			if(proudctResult.size()<2){
				for(int i = 0;i<proudctResult.size();i++){
					this.products.add(proudctResult.get(i));
				}
			}
			else{
				for(int i = 0;i<2;i++){
					this.products.add(proudctResult.get(i));
				}
				if(productsBelow.size()>0){
					for(int i=2;i<proudctResult.size();i++){
						this.productsBelow.add(proudctResult.get(i));
					}
				}
			}
		}
	}
}
