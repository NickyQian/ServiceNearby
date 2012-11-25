<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
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
	
	<h2>Your Location</h2>
	<h3>
		<div>Province: <label id="provLabel"><%=province %></label></div>
	    <div>City: <label id="cityLabel"><%=city %></label></div>
	    <div>District: <label id="distLabel"><%=district %></label></div>    
	    <br />
	    <br />
	    <label id="detaLabel"><%=detailLoc %></label></h3>
	<button onclick="resetLoc()">Reset</button>
</body>
</html>