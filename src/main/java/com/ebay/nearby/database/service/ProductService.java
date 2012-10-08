package com.ebay.nearby.database.service;

import com.ebay.nearby.database.entity.Product;

public interface ProductService {
	public abstract Product findProductById(int id);
	public abstract void insertProduct(Product p);
}
