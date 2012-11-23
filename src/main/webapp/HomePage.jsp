<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="HomePage.css" />
<title>eBay is around you!</title>
</head>
<body>
	<%
		String province = "陕西";
		String city = "西安";
		String district = "长安";
		String detailLoc = "祝村中学";

		boolean hasSetLoc = true;
		
		ArrayList<String> imageNames = new ArrayList<String>();
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		imageNames.add("test.jpg");
		
		ArrayList<String> shopNames = new ArrayList<String>();
		shopNames.add("shop 1");
		shopNames.add("shop 2");
		shopNames.add("shop 3");
		shopNames.add("shop 4");
		shopNames.add("shop 5");
		shopNames.add("shop 6");
		shopNames.add("shop 7");
		shopNames.add("shop 8");
	%>
	<div id="mainBody">
		<div id="logo">
			<img alt="欢迎使用 eBay Nearby!" src="logo.jpg">
		</div>
		<div id="searchBox">
			<form method="get" action="">
				<input type="text" name="location"> <input type="submit"
					value="搜索!">
			</form>
		</div>
		<div id="hotImages">
		<%
			for(int i=0; i<imageNames.size(); i++){
		%>		
				<img alt="欢迎你来本店围观" src="<%=imageNames.get(i) %>">
		<%
			}
		%>
		</div>
		<div id="hotLinks">
		<%
			for(int i=0; i<shopNames.size(); i++){
		%>		
				<a href="www.ebay.com"><%=shopNames.get(i) %></a>
		<%
			}
		%>
		</div>
	</div>

	<div id="location">
		<div id="displayLoc" style="display: none">
			<jsp:include page="DisplayLocation.jsp">
				<jsp:param name="province" value="<%=URLEncoder.encode(province)%>"></jsp:param>
				<jsp:param name="city" value="<%=URLEncoder.encode(city)%>"></jsp:param>
				<jsp:param name="district" value="<%=URLEncoder.encode(district)%>"></jsp:param>
				<jsp:param name="detailLoc"
					value="<%=URLEncoder.encode(detailLoc)%>"></jsp:param>
			</jsp:include>
		</div>

		<div id="resetLoc" style="display: none">
			<jsp:include page="SetLocation.jsp">
				<jsp:param name="1" value=""></jsp:param>
			</jsp:include>
		</div>

	</div>

	<script type="text/javascript">
		if ('<%=hasSetLoc%>') {
			document.getElementById("displayLoc").style['display'] = 'inline';
		} else {
			document.getElementById("resetLoc").style['display'] = 'inline';
		}
	</script>

	<script type="text/javascript">
		function resetLoc() {
			document.getElementById("resetLoc").style['display'] = 'inline';
			document.getElementById("displayLoc").style['display'] = 'none';
		}
		
		
		function save(){
			var prov = document.getElementById("province");
			var provName = prov.options[prov.options.selectedIndex].text;
			
			var city = document.getElementById("city");
			var cityName = city.options[city.options.selectedIndex].text;
			
			var dist = document.getElementById("district");
			var distName = dist.options[dist.options.selectedIndex].text;
			
			var deta = document.getElementById("detail").value;
			document.getElementById("resetLoc").style['display'] = 'none';
			document.getElementById("displayLoc").style['display'] = 'inline';
			
			document.getElementById("provLabel").innerText = provName;
			document.getElementById("cityLabel").innerText = cityName;
			document.getElementById("distLabel").innerText = distName;
			document.getElementById("detaLabel").innerText = deta;
		}
	</script>


</body>
</html>