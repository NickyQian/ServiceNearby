<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String province = URLDecoder.decode(request.getParameter("province"));
		String city = URLDecoder.decode(request.getParameter("city"));
		String district = URLDecoder.decode(request.getParameter("district"));
		String detailLoc = URLDecoder.decode(request.getParameter("detailLoc"));
	%>
	
	<h2>你的位置：</h2>
	<h3><label id="provLabel"><%=province %></label>省
	    <label id="cityLabel"><%=city %></label>市    
	    <label id="distLabel"><%=district %></label>区    
	    <br />
	    <br />
	    <label id="detaLabel"><%=detailLoc %></label></h3>
	<button onclick="resetLoc()">重新选择</button>
</body>
</html>