package com.ebay.nearby.vo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.service.imp.ProductDaoImp;
import com.ebay.nearby.util.Geo;

public class IndexVO {
	private List<Product> products;
	private String locationName;
	private String test;
	public IndexVO(){}
	
	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
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
	public void findProductByLocation(Location location) {
		ProductDao productService = new ProductDaoImp();
		List<Product> products = productService.findProductsByLocation(location);
 		this.setProducts(products);
	}
	
}
