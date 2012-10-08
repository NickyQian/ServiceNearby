package com.ebay.nearby.database.service.imp;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.hibernate.util.HibernateUtil;
import com.ebay.nearby.database.service.ProductService;

public class ProductServiceImp implements ProductService {

	public Product findProductById(int productId) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();

		// String hql ="from Husband where id = :id";
		// Query query = session.createQuery(hql).setParameter("id", husbandId);
		// List<Husband> users3 = query.list();

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

}
