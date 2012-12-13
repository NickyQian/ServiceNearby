package com.ebay.nearby.database;

import org.junit.Test;

import com.ebay.nearby.database.dao.AvaliableTimeDao;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.entity.TimeInterval;
import com.ebay.nearby.database.service.imp.AvaliableTimeDaoImp;

public class AvaliableTimeServiceTest {
	public static AvaliableTimeDao avaliableTimeService;
	@Test
	public void findAvailableCounts(){
		avaliableTimeService = new AvaliableTimeDaoImp();
		TimeInterval ti = new TimeInterval();
		Product p = new Product();
//		p.setDetail(detail);
//		p.getLocation();
		avaliableTimeService.findAvailableCounts(1, 1);
		avaliableTimeService.findAvailableCounts(1, 2);
		avaliableTimeService.findAvailableCounts(1, 3);
//		Product p = new Product();
//		p.setTitle("test");
//		p.setPrice("200");
//		productServ.insertProduct(p);
//		Product p1 = productServ.findProductById(1);
//		assertEquals("test",p1.getTitle());
	}
}
