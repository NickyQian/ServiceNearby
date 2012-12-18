package com.ebay.nearby.action;

import com.ebay.nearby.database.entity.Product;
import com.opensymphony.xwork2.ActionSupport;

public class SearchProductAction extends  ActionSupport  {	

	private static final long serialVersionUID = 1L;

	private Product product;
	private String interest;
	
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String execute() throws Exception {
		Product product = new Product();
		product.setDetail("Test");
		this.setProduct(product);
//		this.setInterest("pp");
		return SUCCESS;
	}
	
}