package com.ebay.nearby.database.service.imp;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ebay.nearby.database.dao.LocationDao;
import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.database.hibernate.util.HibernateUtil;

public class LocationDaoImp implements LocationDao {

	public void insertLocation(Location location) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(location);
		tx.commit();
		session.close();
	}

	public void setLocation(String locationStr) {
		// TODO Auto-generated method stub
//		Location location = new Location();
//		location.setName(locationStr);
//		try {
//			Double[] latlog = Geo.getLatLongFromAddress(locationStr);
//			location.setLatitude(latlog[0]);
//			location.setLongitude(latlog[1]);
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		Session session = HibernateUtil.getSessionFactory().openSession();
//		Transaction tx = session.beginTransaction();
//		session.save(location);
//		tx.commit();
//		session.close();
	}

}
