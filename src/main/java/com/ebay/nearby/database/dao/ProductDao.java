package com.ebay.nearby.database.dao;

import java.util.List;

import com.ebay.nearby.database.entity.Product;

public interface ProductDao {
	
	public void insertProduct(Product p);
	
	public Product findProductById(int id);
	
	// Location may be an object to be defined.
	public List<Product> findProductsByLocation(Object location);
	
	// For search.
	public List<Product> findProductsByKeyWords();
	
	// Time may be a column in the "available time" table.
	// Type may not be int.
	public void bookTimeForService(int time);

}
