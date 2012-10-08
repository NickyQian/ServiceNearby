package com.ebay.nearby.database.test;


import static org.junit.Assert.assertEquals;

import org.junit.Test;

import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.service.ProductService;
import com.ebay.nearby.database.service.imp.ProductServiceImp;

public class ProductServiceTest {
	public static ProductService productServ;
	@Test
	public void testFindProductById(){
		productServ = new ProductServiceImp();
		Product p = new Product();
		p.setTitle("test");
		p.setPrice("200");
		productServ.insertProduct(p);
		Product p1 = productServ.findProductById(1);
		assertEquals("test",p1.getTitle());
		
		//TODO  delete the test product...
	}
}
