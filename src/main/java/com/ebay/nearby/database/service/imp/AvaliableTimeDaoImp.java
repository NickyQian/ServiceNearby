package com.ebay.nearby.database.service.imp;

import com.ebay.nearby.database.dao.AvaliableTimeDao;
import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Product;

public class AvaliableTimeDaoImp implements AvaliableTimeDao {

	public int findAvailableCounts(int productId, int time) {
		// TODO Auto-generated method stub
		ProductDao productService = new ProductDaoImp();
		int result = 0;
		Product product = (Product) productService.findProductById(productId);
		switch(time){
			case 1: result = product.getInterval().getQuantity1(); break;
			case 2: result = product.getInterval().getQuantity2(); break;
			case 3: result = product.getInterval().getQuantity3(); break;
		}

		return result;
	}

}
