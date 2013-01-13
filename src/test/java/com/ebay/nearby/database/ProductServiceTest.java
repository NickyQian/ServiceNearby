package com.ebay.nearby.database;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;

import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.service.imp.ProductDaoImp;

public class ProductServiceTest {
	public static ProductDao productServ;
	@Test
	public void testFindProductById(){
		productServ = new ProductDaoImp();
		Product p = new Product();
		p.setTitle("test");
		p.setDetail("test");
		p.setPrice("200");
		Location l = new Location();
		l.setName("location");
		l.setLatitude(0);
		l.setLongitude(0);
		p.setLocation(l);
		productServ.insertProduct(p);
		Product p1 = productServ.findProductById(1);
//		assertEquals("test",p1.getTitle());
//		assertEquals("location",p1.getLocation().getName());
		List<Product> product = productServ.findProductsByLocation(l);
		List<Product> product2 = productServ.findProductsByKeyWords("test", l);
		
//		List<Product> ss = productServ.checkTest(1);
		Product testP = product.get(0);
		Product testP2 = product2.get(0);
//		assertEquals("test",testP.getTitle());
//		assertEquals("test",testP2.getTitle());
		//TODO  delete the test product...
	}
}
