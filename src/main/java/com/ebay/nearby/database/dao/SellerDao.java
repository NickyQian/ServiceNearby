package com.ebay.nearby.database.dao;

import com.ebay.nearby.database.entity.Seller;

public interface SellerDao {
	
	public Seller findSellerById(int sellerId);
	
	public boolean isTopRankingSeller(int sellerId);
	
	public void insertSeller(Seller seller);
}
