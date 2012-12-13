package com.ebay.nearby.database.dao;

public interface AvaliableTimeDao {
	
	//find how many products left during the time selected
	// time : 1 for 8:00-12:00
	//        2 for 12:00-16:00
	//        3 for 16:00-20:00
	public int findAvailableCounts(int productId, int time);
	
}
