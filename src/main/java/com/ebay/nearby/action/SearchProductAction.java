package com.ebay.nearby.action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ebay.nearby.database.entity.Location;
import com.ebay.nearby.vo.IndexVO;
import com.ebay.nearby.vo.SearchResultVO;
import com.opensymphony.xwork2.ActionSupport;

public class SearchProductAction extends  ActionSupport  {	
	private static final long serialVersionUID = 1L;
	
	private HttpServletResponse response = ServletActionContext.getResponse();
	private HttpServletRequest request = ServletActionContext.getRequest();
	private String interest;
	private SearchResultVO searchresult;
	
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	
	public SearchResultVO getSearchresult() {
		return searchresult;
	}
	public void setSearchresult(SearchResultVO searchresult) {
		this.searchresult = searchresult;
	}
	
	public String execute() throws Exception {
		HttpSession session = request.getSession();
		
		Location location = (Location) session.getAttribute("location");
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
				location = IndexVO.getLocation("zhangjianggaoke");
				session.setAttribute("location",location);
				Cookie cookie = new Cookie("location", "zhangjianggaoke");
				cookie.setMaxAge(60 * 60 * 24 * 365); // Make the cookie last a year
				response.addCookie(cookie);
			}
		}
		
		if (interest==null){
			this.setInterest("");
		}
		
		searchresult = new SearchResultVO(interest,location);
		this.setSearchresult(searchresult);
		return SUCCESS;
	}
}