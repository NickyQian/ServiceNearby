package com.ebay.nearby.database;

import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.entity.Seller;
import com.ebay.nearby.database.entity.TimeInterval;
import com.ebay.nearby.database.service.imp.ProductDaoImp;

public class MockData {
	private static ProductDao productService = new ProductDaoImp();
	
	public static void makeData(String name, double longitude, double latitude, 
			String sellerName, String phoneNumber, boolean isTopSeller,
			int quantity1, int quantity2, int quantity3,
			String imgUrl, String imgUrlBig, String detail,
			String title, String price, String productBrand,
			String type, String avalibleDateStart, String avalibleDateEnd,
			int soldQuantities){
		
		TimeInterval timeInterval = new TimeInterval();
		Location location = new Location();
		Seller seller = new Seller();
		Product product = new Product();
		
		location.setName(name);
		location.setLatitude(latitude);
		location.setLongitude(longitude);
		
		seller.setName(sellerName);
		seller.setPhoneNumber(phoneNumber);
		seller.setTopSeller(true);
		timeInterval.setQuantity1(quantity1);
		timeInterval.setQuantity2(quantity2);
		timeInterval.setQuantity3(quantity3);
		
		product.setImgUrl(imgUrl);
		product.setImgUrlBig(imgUrlBig);
		product.setDetail(detail);
		product.setTitle(title);
		product.setPrice(price);
		product.setLocation(location);
		product.setSeller(seller);
		product.setInterval(timeInterval);
		product.setProductBrand(productBrand);
		product.setType(type);
		product.setAvalibleDateStart(avalibleDateStart);
		product.setAvalibleDateEnd(avalibleDateEnd);
		product.setSoldQuantities(soldQuantities);
		
		productService.insertProduct(product);
	}
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// for location zhangjianggaoke
		MockData.makeData("keyuan Road.", 121.6162340, 31.2143230, 
				"James", "081-02190871", true, 34, 42, 21, 
				"./img/dataImg/bread1.jpg", "./img/dataImg/bread2.jpg", 
				"For all those young chefs, ages 2 and up, who like to bake their own breads, this is a must have.  Croissant, bagel, braided poppy seed roll, pumpernickel rye bread, French bread, wheat bread, bread loaf and a regular plain ol' roll are all included.\nALL playfood items are actual size. Make sure you don't confuse them for the real thing.\n(All play food has been rigorously tested and meets Consumer Products Safety Commission standards for toys sold in the United States.)",
				"Dollhouse Miniatures Food Lot 20 Ham Cheese Bread Bakery Hotdogs LB1A", 
				"$9", "Chreistena", "Food", "2012-12-12", "2013-01-21", 99);
		
		MockData.makeData("keyuan Road.", 121.6134540, 31.2135430, 
				"Nick", "081-02190871", true, 31, 23, 9, 
				"./img/dataImg/cake1.jpg", "./img/dataImg/cake2.jpg", 
				"For over 25 years, Christopher Radko holiday ornaments have graced the homes of celebrities, royalty, collectors, and families across the globe. Each Christopher Radko ornament is made from beautiful mouth-blown glass, and is hand-painted and finished by European artisans using age-old techniques. Every piece is a work of “heart,” crafted with meticulous attention to detail for generations to enjoy.",
				"Christopher Radko Rare Sweet Angel Food Berry Strawberry Short Cake Christmas", 
				"$9.56", "Radko", "Dessert", "2013-01-06", "2013-02-10", 39);
		
		MockData.makeData("keyuan Road.", 121.6134540, 31.2135430, 
				"Jack", "1381649920", true, 67, 54, 65, 
				"./img/dataImg/nicecake1.jpg", "./img/dataImg/nicecake2.jpg", 
				"For over 25 years, Christopher Radko holiday ornaments have graced the homes of celebrities, cake, royalty, collectors, and families across the globe. Each Christopher Radko ornament is made from beautiful mouth-blown glass, and is hand-painted and finished by European artisans using age-old techniques. Every piece is a work of “heart,” crafted with meticulous attention to detail for generations to enjoy.",
				"Christopher Radko Rare Sweet Angel Food Berry Strawberry Short cake Christmas", 
				"$29", "Art", "Dessert", "2012-01-01", "2013-03-21", 89);
		
		MockData.makeData("keyuan Road.", 121.6198140, 31.2112030, 
				"Jack", "1381649920", true, 67, 54, 65,
				"./img/dataImg/cheesecake1.jpg", "./img/dataImg/cheesecake2.jpg", 
				"Super Creamy Chocolate Velvet Cheesecake Dessert\nLooking for something different to serve as dessert for the holidays\nSEEK NO LONGER!\nThis Delicious cheesecake recipe\nwill have everybody asking for more.",
				"Super Creamy Chocolate Velvet Cheesecake Dessert-ONE CENT PENNY RECIPE", 
				"$29", "Art", "Dessert", "2012-01-01", "2013-03-21", 59);
		
		MockData.makeData("keyuan Road.", 121.6172340, 31.2137130, 
				"Jackie", "13816224920", true, 67, 54, 65, 
				"./img/dataImg/chocolate1.jpg", "./img/dataImg/chocolate1.jpg", 
				"Milk Chocolate Covered Raisins ~ 1 lb.\nRaisins smothered in Milk Chocolate; unbelievable how good they are!\nDuring warmer months, we recommend shipping using a cooler pack\nfor an additional $5.00.\n~We gladly combine shipping on all orders~\nPlease be sure to visit our e-bay store for a variety of chocolates!",
				"MILK CHOCOLATE COVERED RAISINS ~ CANDY ~ 1 LB.",
				"US $17.50", "Christina", "Dessert", "2012-11-11", "2013-11-11", 49);
		
		MockData.makeData("keyuan Road.", 121.6117740, 31.2122530, 
				"Andy", "081-02190871", true, 10, 15, 18, 
				"./img/dataImg/coffee1.jpg", "./img/dataImg/coffee2.jpg", 
				"Green coffee Bean Extract is a weight loss and diet ingredient in hundreds of popular supplements. This ingredient recently saw a surge in popularity due to a segment on the popular Dr. Oz show. Green Coffee Bean Extract has anti-oxidant properties and was shown to aid with weight loss in a study performed by University of Scranton.",
				"Pure Green Coffee Bean Extract 50% Chlorogenic Acid 800mg with GCA (2-Pack)", 
				"$9", "Ritz", "Drink", "2013-01-10", "2013-06-01", 40);

	}

}
