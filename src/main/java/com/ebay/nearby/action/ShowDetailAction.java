package com.ebay.nearby.action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.vo.DetailVO;
import com.ebay.nearby.vo.IndexVO;
import com.opensymphony.xwork2.ActionSupport;

public class ShowDetailAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private HttpServletResponse response = ServletActionContext.getResponse();
	private HttpServletRequest request = ServletActionContext.getRequest();
	
	private DetailVO detail;
	private int id;
	private Location location;
	
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
	
	public Location getLocation() {
		return location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}

	public String execute() {
		detail = new DetailVO(id);
		HttpSession session = request.getSession();
		
		location = (Location) session.getAttribute("location");
		if(location==null){
			Cookie[] cookies = request.getCookies();
			location = new Location();
			int i = 0;
			for(;i < cookies.length; i++) {
				if(cookies[i].getName().equals("location")) {
					location = IndexVO.getLocation(cookies[i].getValue());
					session.setAttribute("location",location);
					break;
				}
			}
			if(i == cookies.length) {// set default location session/cookie
				// session and cookie
				location = IndexVO.getLocation("zhangjiang hi-tech park");
				session.setAttribute("location",location);
				Cookie cookie = new Cookie("location", "zhangjiang hi-tech park");
				cookie.setMaxAge(60 * 60 * 24 * 365); // Make the cookie last a year
				response.addCookie(cookie);
			}
		}
		return SUCCESS;
	}
}
