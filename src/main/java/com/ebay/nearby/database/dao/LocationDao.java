package com.ebay.nearby.database.dao;

import com.ebay.nearby.database.entity.Location;

public interface LocationDao {
	
	public abstract void insertLocation(Location location);
	public abstract void setLocation(String location);
	
}
