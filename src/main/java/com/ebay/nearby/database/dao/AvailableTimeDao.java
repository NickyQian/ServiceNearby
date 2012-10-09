package com.ebay.nearby.database.dao;

public interface AvailableTimeDao {
	
	//find how many products left during the time selected
	public int findAvailableCounts(int productId, int time);
	
}
