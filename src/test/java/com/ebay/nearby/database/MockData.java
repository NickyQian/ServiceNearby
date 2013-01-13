package com.ebay.nearby.database;

import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.entity.Seller;
import com.ebay.nearby.database.entity.TimeInterval;
import com.ebay.nearby.database.service.imp.ProductDaoImp;

public class MockData {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// for location
		ProductDao productService = new ProductDaoImp();
		
		String name = "keyuan Road.";
		double  longitude = 121.6117740;
		double latitude =  31.2122530;
		
		// for seller
		String sellerName = "Andy";
		String phoneNumber = "081-02190871";
		
		// for product
		String imgUrl = "http://i.ebayimg.com/t/Pure-Green-Coffee-Bean-Extract-50-Chlorogenic-Acid-800mg-with-GCA-2-Pack-/00/s/NTAwWDUwMA==/$T2eC16JHJG8E9nyfmJohBQ8FoJES3g~~60_35.JPG";
		String imgUrlBig = "http://i.ebayimg.com/00/s/NTAwWDUwMA==/$T2eC16hHJHgE9n0yHGWcBQ8Fnb2Q-!~~60_1.JPG?set_id=8800005007";
		String detail = "Green Coffee Bean Extract is a weight loss and diet ingredient in hundreds of popular supplements. This ingredient recently saw a surge in popularity due to a segment on the popular Dr. Oz show. Green Coffee Bean Extract has anti-oxidant properties and was shown to aid with weight loss in a study performed by University of Scranton.";
		String title = "Pure Green Coffee Bean Extract 50% Chlorogenic Acid 800mg with GCA (2-Pack)";
		String price = "$11";
		
		for(int i = 0; i < 5; i++){
			Location location = new Location(name,latitude-0.000001*i, longitude+0.000001*i);
			TimeInterval timeInterval = new TimeInterval(10,15,18);		
			Seller seller = new Seller();
			seller.setName(sellerName);
			seller.setPhoneNumber(phoneNumber);
			seller.setTopSeller(true);
			
			Product product = new Product();
			product.setImgUrl(imgUrl);
			product.setImgUrlBig(imgUrlBig);
			product.setDetail(detail);
			product.setTitle(title);
			product.setPrice(price);
			product.setLocation(location);
			product.setSeller(seller);
			product.setInterval(timeInterval);
			
			productService.insertProduct(product);
		}
		
	}

}
