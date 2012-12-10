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
		assertTrue(31.230392 == response[0]);
		assertTrue(121.4737 == response[1]);
	}	
}
