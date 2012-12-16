package com.ebay.nearby.database;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import com.ebay.nearby.database.dao.AvaliableTimeDao;
import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.entity.TimeInterval;
import com.ebay.nearby.database.service.imp.AvaliableTimeDaoImp;
import com.ebay.nearby.database.service.imp.ProductDaoImp;

public class AvaliableTimeServiceTest {
	public static AvaliableTimeDao avaliableTimeService;
	@Test
	public void findAvailableCounts(){
		avaliableTimeService = new AvaliableTimeDaoImp();
		TimeInterval ti = new TimeInterval();
		ti.setQuantity1(3);
		ti.setQuantity2(4);
		ti.setQuantity3(5);
		Product p = new Product();
		ProductDao productServ = new ProductDaoImp();
		p.setTitle("test");
		p.setPrice("200");
		p.setInterval(ti);
		productServ.insertProduct(p);

		assertEquals(3,avaliableTimeService.findAvailableCounts(1, 1));
		assertEquals(4,avaliableTimeService.findAvailableCounts(1, 2));
		assertEquals(5,avaliableTimeService.findAvailableCounts(1, 3));
	}
}
