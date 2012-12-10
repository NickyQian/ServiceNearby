package com.ebay.nearby.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Geo {
	final static String urlStr = "http://maps.google.com/maps/geo?q=";
	final static String param = "&output=json&key=";
	
	public static Double[] getLatLongFromAddress(String address) throws IOException{
		address = URLEncoder.encode(address,"UTF-8");
		BufferedReader in = null;
		Double[] result = new Double[2];
		if(address == null || address.isEmpty()) {
			return null;
		}
		try{
			URL url = new URL(urlStr + address + param);
			URLConnection  connection = url.openConnection();
//			connection.setRequestProperty("accept", "*/*"); 
//			connection.setRequestProperty("connection", "Keep-Alive"); 			

			in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String line = null;
			String response = "";
			while ((line = in.readLine())!= null) {
				response += line + "\n";
			}
			JSONObject responseJson = JSONObject.fromObject(response);
			JSONArray placeMarkArray = JSONArray.fromObject(responseJson.get("Placemark"));
							// get the first mark if have two more same marks
			JSONObject placeMark = placeMarkArray.getJSONObject(0); 
			JSONObject point = (JSONObject) placeMark.get("Point");
			JSONArray coordinates = (JSONArray) point.get("coordinates");
			result[0] = (Double)coordinates.get(1); // latitude
			result[1] = (Double)coordinates.get(0); // longitude
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally	{
			try	{
				if (in != null)	{
					in.close();
				}
			}
			catch (IOException ex) {
			ex.printStackTrace();
			}
		}
		return result;
	}
	
	public static double calDistance(String[] lalong1, String lalong2) {
		
		return 0;
	}
	
	public static Double[] findLatLongByDistance(Double[] LatLong, Double distance){
		return null;
	}
}
