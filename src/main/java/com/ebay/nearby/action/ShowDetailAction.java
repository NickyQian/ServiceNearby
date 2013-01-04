package com.ebay.nearby.action;

import com.ebay.nearby.vo.DetailVO;
import com.opensymphony.xwork2.ActionSupport;

public class ShowDetailAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private DetailVO detail;
	private int id;
	
	public DetailVO getDetail() {
		return detail;
	}

	public void setDetail(DetailVO detail) {
		this.detail = detail;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String execute() {
		detail = new DetailVO(id);
		detail.setTest("test");
		return SUCCESS;
	}
}
