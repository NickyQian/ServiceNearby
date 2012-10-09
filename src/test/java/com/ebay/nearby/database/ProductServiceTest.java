package com.ebay.nearby.database;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.service.imp.ProductDaoImp;

public class ProductServiceTest {
	public static ProductDao productServ;
	@Test
	public void testFindProductById(){
		productServ = new ProductDaoImp();
		Product p = new Product();
		p.setTitle("test");
		p.setPrice("200");
		productServ.insertProduct(p);
		Product p1 = productServ.findProductById(1);
		assertEquals("test",p1.getTitle());
		
		//TODO  delete the test product...
	}
}
