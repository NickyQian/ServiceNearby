package com.ebay.nearby.util;

public class Bound {
	/*
	 * 当前位置正北方向x米处 纬度
	 */
	private Double latN;
	private Double latS;
	private Double lagE;
	private Double lagW;
	public Double getLatN() {
		return latN;
	}
	public void setLatN(Double latN) {
		this.latN = latN;
	}
	public Double getLatS() {
		return latS;
	}
	public void setLatS(Double latS) {
		this.latS = latS;
	}
	public Double getLagE() {
		return lagE;
	}
	public void setLagE(Double lagE) {
		this.lagE = lagE;
	}
	public Double getLagW() {
		return lagW;
	}
	public void setLagW(Double lagW) {
		this.lagW = lagW;
	}
	
}
