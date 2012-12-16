package com.ebay.nearby.util;

import static org.junit.Assert.assertTrue;

import java.io.IOException;

import org.junit.Test;

public class GeoTest {
	@Test
	public void testGetLatLongFromAddress() throws IOException{
		Double[] response = Geo.getLatLongFromAddress("shanghai");
		assertTrue(31.230392 == response[0]);
		assertTrue(121.4737 == response[1]);
		response = Geo.getLatLongFromAddress("上海龙之梦");
		assertTrue(31.230392 == response[0]); // latitude
		assertTrue(121.4737 == response[1]);  // longitude
	}
	
	@Test
	public void testConversion() throws IOException {
		Double[] response = Geo.getLatLongFromAddress("shanghai");
		Bound bound = Geo.conversion(response[0], response[1], 5000);
		assertTrue(bound.getLagE() == 121.5195);
		assertTrue(bound.getLagW() == 121.4279);
		assertTrue(bound.getLatN() == 31.275392);
		assertTrue(bound.getLatS() == 31.185391999999997);
	}
}
