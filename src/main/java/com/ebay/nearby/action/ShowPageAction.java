package com.ebay.nearby.action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.vo.IndexVO;
import com.opensymphony.xwork2.ActionSupport;

public class ShowPageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private HttpServletResponse response = ServletActionContext.getResponse();
	private HttpServletRequest request = ServletActionContext.getRequest();
	private String locationName;
	private IndexVO indexvo = new IndexVO();
	
	public String execute(){
		Location location = null;
		HttpSession session = request.getSession();
		if(locationName!=null&&!locationName.equals("")){
			location = IndexVO.getLocation(locationName);
			session.setAttribute("location", location);
			
			Cookie[] cookies = request.getCookies();
			int i = 0;
			for(;i < cookies.length; i++) {
				if(cookies[i].getName().equals("location")) {
					cookies[i].setValue(locationName);
					response.addCookie(cookies[i]);
					break;
				}
			}
			if(i == cookies.length) {
				Cookie cookie = new Cookie("location", locationName);
				cookie.setMaxAge(60 * 60 * 24 * 365); // Make the cookie last a year
				response.addCookie(cookie);
			}	
		} else {
		
		location = (Location) session.getAttribute("location");
			if(location==null){
				Cookie[] cookies = request.getCookies();
				location = new Location();
				int i = 0;
				if(cookies!=null){
					for(;i < cookies.length; i++) {
						if(cookies[i].getName().equals("location")) {
							locationName = cookies[i].getValue();
							location = IndexVO.getLocation(locationName);
							session.setAttribute("location", location);
							break;
						}
					}
					if(i == cookies.length) {// set default location session/cookie
						// session and cookie
						locationName = "zhangjiang hi-tech park";
						location = IndexVO.getLocation(locationName);
						session.setAttribute("location", location);
						Cookie cookie = new Cookie("location", "zhangjiang hi-tech park");
						cookie.setMaxAge(60 * 60 * 24 * 365); // Make the cookie last a year
						response.addCookie(cookie);
					}
				} else {
					locationName = "zhangjiang hi-tech park";
					location = IndexVO.getLocation(locationName);
					session.setAttribute("location", location);
					Cookie cookie = new Cookie("location", "zhangjiang hi-tech park");
					cookie.setMaxAge(60 * 60 * 24 * 365); // Make the cookie last a year
					response.addCookie(cookie);
				}
			} else {
				locationName = location.getName();
			}
		}
		indexvo.findProductByLocation(location);
		indexvo.setLocationName(locationName);
		indexvo.setTest(locationName);
		
		return SUCCESS;
	}
	
	public String getLocationName() {
		return locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	public IndexVO getIndexvo() {
		return indexvo;
	}

	public void setIndexvo(IndexVO indexvo) {
		this.indexvo = indexvo;
	}
}
