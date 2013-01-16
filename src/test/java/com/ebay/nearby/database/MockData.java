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
		
		MockData.makeData("guoshoujin Road.", 121.6134540, 31.2135430, 
				"Jack", "1381649920", true, 67, 54, 65, 
				"./img/dataImg/nicecake1.jpg", "./img/dataImg/nicecake2.jpg", 
				"For over 25 years, Christopher Radko holiday ornaments have graced the homes of celebrities, cake, royalty, collectors, and families across the globe. Each Christopher Radko ornament is made from beautiful mouth-blown glass, and is hand-painted and finished by European artisans using age-old techniques. Every piece is a work of “heart,” crafted with meticulous attention to detail for generations to enjoy.",
				"Christopher Radko Rare Sweet Angel Food Berry Strawberry Short cake Christmas", 
				"$29", "Art", "Dessert", "2012-01-01", "2013-03-21", 89);
		
		MockData.makeData("zuchongzhi Road.", 121.6198140, 31.2112030, 
				"Jack", "1381649920", true, 67, 54, 65,
				"./img/dataImg/cheesecake1.jpg", "./img/dataImg/cheesecake2.jpg", 
				"Super Creamy Chocolate Velvet Cheesecake Dessert\nLooking for something different to serve as dessert for the holidays\nSEEK NO LONGER!\nThis Delicious cheesecake recipe\nwill have everybody asking for more.",
				"Super Creamy Chocolate Velvet Cheesecake Dessert-ONE CENT PENNY RECIPE", 
				"$29", "Art", "Dessert", "2012-01-01", "2013-03-21", 59);
		
		MockData.makeData("guoshoujin Road.", 121.6172340, 31.2137130, 
				"Jackie", "13816224920", true, 67, 54, 65, 
				"./img/dataImg/chocolate1.jpg", "./img/dataImg/chocolate1.jpg", 
				"Milk Chocolate Covered Raisins ~ 1 lb.\nRaisins smothered in Milk Chocolate; unbelievable how good they are!\nDuring warmer months, we recommend shipping using a cooler pack\nfor an additional $5.00.\n~We gladly combine shipping on all orders~\nPlease be sure to visit our e-bay store for a variety of chocolates!",
				"MILK CHOCOLATE COVERED RAISINS ~ CANDY ~ 1 LB.",
				"US $17.50", "Christina", "Dessert", "2012-11-11", "2013-11-11", 49);
		
		MockData.makeData("bibo Road.", 121.6117740, 31.2122530, 
				"Andy", "081-02190871", true, 10, 15, 18, 
				"./img/dataImg/coffee1.jpg", "./img/dataImg/coffee2.jpg", 
				"Green coffee Bean Extract is a weight loss and diet ingredient in hundreds of popular supplements. This ingredient recently saw a surge in popularity due to a segment on the popular Dr. Oz show. Green Coffee Bean Extract has anti-oxidant properties and was shown to aid with weight loss in a study performed by University of Scranton.",
				"Pure Green Coffee Bean Extract 50% Chlorogenic Acid 800mg with GCA (2-Pack)", 
				"$9", "Ritz", "Drink", "2013-01-10", "2013-06-01", 40);
		
		///////////////////////////////////
		MockData.makeData("keyuan Road.", 121.6181240, 31.2111130, 
				"Bruce", "081-02190871", true, 4, 5, 8, 
				"./img/dataImg/cake11.jpg", "./img/dataImg/cake11.jpg", 
				"For a free cake fabric sample package call Glitzy Girlz at 417-777-8817\nDue to the differences in color displays on computer monitors many colors will not display properly.  If you need a specific color, please email and ask about the color content before purchasing. We are happy to help in anyway we can.",
				"New Cupcake Fabric BTY Cake Sweets Desserts Kitchen cake Food", 
				"$7.85", "Ritz", "Dessert", "2013-01-17", "2013-05-13", 50);

		MockData.makeData("keyuan Road.", 121.6159340, 31.2103930, 
				"Bruce", "081-02190871", true, 64, 65, 23, 
				"./img/dataImg/snack1.jpg", "./img/dataImg/snack1.jpg", 
				"Mixed Nuts Roasted Lightly Salted. Enjoy the best of everything with this truly premium mixed nut selection.\nIngredients: Almond, Pecans, Hazel Nuts, cashews, Brazil Nuts",
				"Aunt Eulies Caribbean (West Indian) Black Jamaican Rum, Fruit Cake: Approx 2 lbs", 
				"US $25.00", "SUN", "Dessert", "2013-01-07", "2013-04-13", 53);
		
		MockData.makeData("keyuan Road.", 121.6134240, 31.2192930, 
				"Bruce", "081-02190871", true, 12, 25, 51, 
				"./img/dataImg/snack21.jpg", "./img/dataImg/snack21.jpg", 
				"Caribbean Black / Jamaican Rum Cake (Fruit Cake) is an irresistibly moist mix of rum soaked dried fruits, local grown spices such as cinnamon, and freshly grated nutmeg, highly caramelized sugar called “Browning’, and other aromatic ingredients to produce an enticing, decadent treat.  Ours is a light, rich, deeply indulgent, and melt-in-your-mouth premium cake. ",
				" Fresh Box HOSTESS Devils Food Chocolate ZINGERS 12 Total Snacks!!!", 
				"US $0.99", "Hostess", "Snacks", "2013-01-04", "2013-03-13", 299);
		
		// for location east China normal university
		MockData.makeData("North zhongshan Road.", 121.4012374, 31.2298312, 
				"Bruce", "081-02190871", true, 23, 25, 5, 
				"./img/dataImg/icecream1.jpg", "./img/dataImg/icecream1.jpg", 
				"Import duties, taxes and charges are not included in the item price or shipping charges. These charges are the buyer's responsibility.  Please check with your country's customs office to determine what these additional costs will be prior to bidding/buying.  All International shipping will be by priority international mail and have insurance add.   A handling fee of $2 US will be added to shipping to cover the cost of filling out the paperwork.",
				"NEWLY WEDS ICECREAM CAKE ROLL DELICIOUS PAPER ADVERTISING SIGN POSTER", 
				"US $2.99", "Lays'", "icecream", "2013-01-04", "2013-03-13", 3299);
		
		MockData.makeData("ZaoYang Road.", 121.4052874, 31.2245212, 
				"Bruce", "081-02190871", true, 213, 253, 56, 
				"./img/dataImg/icecream2.jpg", "./img/dataImg/icecream2.jpg", 
				"Caribbean Black / Jamaican Rum Cake (Fruit Cake) is an irresistibly moist mix of rum soaked dried fruits, local grown spices such as cinnamon, and freshly grated nutmeg, highly caramelized sugar called “Browning’, and other aromatic ingredients to produce an enticing, decadent treat.  Ours is a light, rich, deeply indulgent, and melt-in-your-mouth premium cake. ",
				"Confetti Cupcake Earrings Rainbow Birthday Party icecream Cake Kitsch Kawaii !!", 
				"$5.75", "Lays'", "icecream", "2013-01-04", "2013-03-13", 1299);
		
		MockData.makeData("DaDuHe Road.", 121.4012374, 31.2292312, 
				"Bruce", "081-02190871", true, 223, 125, 57, 
				"./img/dataImg/icecream3.jpg", "./img/dataImg/icecream3.jpg", 
				"Caribbean Black / Jamaican Rum Cake (Fruit Cake) is an irresistibly moist mix of rum soaked dried fruits, local grown spices such as cinnamon, and freshly grated nutmeg, highly caramelized sugar called “Browning’, and other aromatic ingredients to produce an enticing, decadent treat.  Ours is a light, rich, deeply indulgent, and melt-in-your-mouth premium cake. ",
				"Strawberry Birthday Cake Slice Earrings Confetti Sprinkles Ice Cream Cute Pink!!", 
				"US $5.75", "Lays'", "icecream", "2013-01-04", "2013-03-13", 2319);
	}

}
