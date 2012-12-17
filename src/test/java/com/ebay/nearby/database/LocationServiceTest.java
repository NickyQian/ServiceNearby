package com.ebay.nearby.database;

import org.junit.Test;

import com.ebay.nearby.database.dao.LocationDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.service.imp.LocationDaoImp;

public class LocationServiceTest {
	public static LocationDao locationSer;
	@Test
	public void testInsertLocation(){
		locationSer = new LocationDaoImp();
		Location location = new Location();
		location.setName("shanghai");
		location.setLatitude(31.230392);
		location.setLongitude(121.4737);		
		locationSer.insertLocation(location);
	}
}
