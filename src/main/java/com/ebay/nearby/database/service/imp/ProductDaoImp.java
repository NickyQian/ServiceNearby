package com.ebay.nearby.database.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.ebay.nearby.database.dao.ProductDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.entity.TimeInterval;
import com.ebay.nearby.database.hibernate.util.HibernateUtil;
import com.ebay.nearby.util.Bound;
import com.ebay.nearby.util.Geo;

public class ProductDaoImp implements ProductDao {
	private final int distance = 8000; 
	
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

	public void bookTimeForService(int time) {
		// TODO Auto-generated method stub
		
	}

	public List<Product> findProductsByLocation(Location location) {
		// TODO Auto-generated method stub
		Bound bound = new Bound();
		bound  = Geo.conversion(location.getLatitude(), location.getLongitude(), distance);
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		String hql = "from Product as p where " +
				"p.location.latitude >= :latS " +
				"and p.location.latitude <= :latN " +
				"and p.location.longitude >= :lagW " +
				"and p.location.longitude <= :lagE ";
		Query query=session.createQuery(hql);
		query.setString("latS", bound.getLatS()+"");
		query.setString("latN", bound.getLatN()+"");
		query.setString("lagW", bound.getLagW()+"");
		query.setString("lagE", bound.getLagE()+"");
		query.setFirstResult(1); 
		query.setMaxResults(9); 
		List<Product> list = query.list();
		List<Product> results = new ArrayList<Product>();
		for(Product p : list) {
			if(Geo.check(p.getLocation(), location.getLatitude(), location.getLongitude(), distance)){
				results.add(p);
			}
		}
		tx.commit();
		session.close();
		return results;
	}

	public List<Product> findProductsByKeyWords(String keywords,
			Location location) {
		 //TODO Auto-generated method stub
		Bound bound = new Bound();
		bound  = Geo.conversion(location.getLatitude(), location.getLongitude(), distance);
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		String hql = "from Product as p where " +
				"p.location.latitude >= :latS " +
				"and p.location.latitude <= :latN " +
				"and p.location.longitude >= :lagW " +
				"and p.location.longitude <= :lagE " +
				"and p.title like :title " +
				"and p.detail like :detail";
		Query query=session.createQuery(hql);
		query.setFirstResult(1); 
		query.setMaxResults(5); 
		query.setString("latS", bound.getLatS()+"");
		query.setString("latN", bound.getLatN()+"");
		query.setString("lagW", bound.getLagW()+"");
		query.setString("lagE", bound.getLagE()+"");
		query.setString("title", "%" + keywords + "%");
		query.setString("detail", "%" + keywords + "%");
		List<Product> list = query.list();
		List<Product> results = new ArrayList<Product>();
		for(Product p : list) {
			if(Geo.check(p.getLocation(), location.getLatitude(), location.getLongitude(), distance)){
				results.add(p);
			}
		}
		tx.commit();
		session.close();
		return results;
	}

	public void bookTimeForService(int productId, int intervalNumber) {
		// TODO Auto-generated method stub
		
	}

	public void bookTimeForService(int productId, TimeInterval intervalNumber) {
		// TODO Auto-generated method stub
		
	}
	
	public List<Product> checkTest(double s){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		String hql = "from Product as p where p.location.latitude < :s";
		Query query=session.createQuery(hql);
		query.setString("s", s+"");
		List<Product> list=query.list();
		session.flush();
		tx.commit();
		session.close();
		return list;
	}
	

}
