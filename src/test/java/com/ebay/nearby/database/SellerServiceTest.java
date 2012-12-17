package com.ebay.nearby.database;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

import com.ebay.nearby.database.dao.SellerDao;
import com.ebay.nearby.database.entity.Seller;
import com.ebay.nearby.database.service.imp.SellerDaoImp;

public class SellerServiceTest {
	public static SellerDao sellerService;
	@Test
	public void testFindProductById(){
		sellerService = new SellerDaoImp();
		Seller s = new Seller();
		s.setName("SellerOne");
		s.setTopSeller(true);
		s.setPhoneNumber("138XXXXXXXX");
		
		sellerService.insertSeller(s);
		
		Seller seller = sellerService.findSellerById(1);
		
		assertEquals("SellerOne", seller.getName());
		assertEquals("138XXXXXXXX", seller.getPhoneNumber());
		assertTrue(seller.isTopSeller());
	}
}
