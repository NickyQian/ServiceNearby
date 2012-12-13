package com.ebay.nearby.database.service.imp;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ebay.nearby.database.dao.SellerDao;
import com.ebay.nearby.database.entity.Product;
import com.ebay.nearby.database.entity.Seller;
import com.ebay.nearby.database.hibernate.util.HibernateUtil;

public class SellerDaoImp implements SellerDao{

	public Seller findSellerById(int sellerId) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Seller seller = (Seller)session.get(Seller.class, sellerId);
		tx.commit();
		session.close();
		return seller;
	}

	public void insertSeller(Seller seller) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(seller);
		tx.commit();
		session.close();
	}

	public boolean isTopRankingSeller(int sellerId) {
		// TODO Auto-generated method stub
//		Session session = HibernateUtil.getSessionFactory().openSession();
//		Transaction tx = session.beginTransaction();
//		Seller seller = (Seller)session.get(Seller.class, sellerId);
//		tx.commit();
//		session.close();
		return false;
	}

}
