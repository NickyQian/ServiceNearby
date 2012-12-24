package com.ebay.nearby.vo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.ebay.nearby.database.dao.LocationDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.service.imp.LocationDaoImp;
import com.ebay.nearby.util.Geo;

public class IndexVO {
	private List<String> imgStr;
	private String locationName;	
//	public IndexVO(){}
	
	public IndexVO(String locationName, List<Product> product){
		imgStr = new ArrayList<String>();
		for(Product p : product){
			String img = p.getImgUrlBig();
			imgStr.add(img);
		}
	}

	public List<String> getImgStr() {
		return imgStr;
	}

	public void setImgStr(List<String> imgStr) {
		this.imgStr = imgStr;
	}

	public String getLocationName() {
		return locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	
	public static Location getLocation(String locationName){
//		LocationDao locationService = new LocationDaoImp();
		Location location = new Location();
		location.setName(locationName);
		try {
			Double[] latLong = Geo.getLatLongFromAddress(locationName);
			location.setLatitude(latLong[0]);
			location.setLongitude(latLong[1]);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		locationService.insertLocation(location);
		return location;
	}
	
}
