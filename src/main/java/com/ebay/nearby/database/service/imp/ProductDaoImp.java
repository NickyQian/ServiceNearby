package com.ebay.nearby.database.service.imp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.entity.TimeInterval;
import com.ebay.nearby.database.hibernate.util.HibernateUtil;

public class ProductDaoImp implements ProductDao {

	public Product findProductById(int productId) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();

		// String hql ="from Product where id = :id";
		// Query query = session.createQuery(hql).setParameter("id", productId);
		// List<Product> products = query.list();

		Product product = (Product) session.get(Product.class, productId);
		tx.commit();
		session.close();
		return product;
	}

	public void insertProduct(Product p) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(p);
		tx.commit();
		session.close();
	}

	public List<Product> findProductsByLocation(Object location) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Product> findProductsByKeyWords() {
		// TODO Auto-generated method stub
		return null;
	}

	public void bookTimeForService(int time) {
		// TODO Auto-generated method stub
		
	}

	public List<Product> findProductsByLocation(Location location) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Product> findProductsByKeyWords(String keywords,
			Location location) {
		// TODO Auto-generated method stub
		return null;
	}

	public void bookTimeForService(int productId, int intervalNumber) {
		// TODO Auto-generated method stub
		
	}

	public void bookTimeForService(int productId, TimeInterval intervalNumber) {
		// TODO Auto-generated method stub
		
	}
	

}
