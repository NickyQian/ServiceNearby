<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="http://gh.ebaystatic.com/header/css/min?combo=2&amp;factor=CLASSIC&amp;rvr=72&amp;h=17735">
<link href="http://ir.ebaystatic.com/z/yf/0rygboh5l25mpp0xqptnckjup.css?dataUri=true" type="text/css" rel="stylesheet">
<link href="http://ir.ebaystatic.com/z/mp/vtepmlq5di5djnuwo1khbcq3f.css?dataUri=true" type="text/css" rel="stylesheet">
<link href="./css/common.css" type="text/css" rel="stylesheet">
<title>eBay is around you!</title>
</head>
<body>
    <%        
        ArrayList<String> imageNames = new ArrayList<String>();
         imageNames.add("./img/test1.jpg");
         imageNames.add("./img/test2.jpg");
         imageNames.add("./img/test3.jpg");
         imageNames.add("./img/test4.jpg");
         imageNames.add("./img/test5.jpg");
         imageNames.add("./img/test6.jpg");
         imageNames.add("./img/test7.jpg");
         imageNames.add("./img/test8.jpg");
         imageNames.add("./img/test9.jpg");
    %>
    <jsp:include page="head.jsp"></jsp:include>
    <br>
    <div class = "mainBody">
        <div class = "top">
            <div><form action="search" method="get">
                What's Your Interest : <input id="interest" name = "interest" type="textbox" value=""
                    onkeydown="keySubmit()"> <input type="submit" id="submitLoc"
                    value="Search Now!" onclick="codeAddress()">
                  </form>
            </div>
            <div id="hotImages">
            <s:iterator value="indexvo.products" id="img">
             	<a href="showdetail?id=<s:property value='id'/>"><img class = "img" src="<s:property value='imgUrlBig'/>" alt="welcome to our shop!"></a>
			</s:iterator> 
                <%
                    for(int i=0; i<imageNames.size(); i++){
                %>      
                        <img class = "img" alt="welcome to our shop!" src="<%=imageNames.get(i) %>">
                <%
                    }
                %>
            </div>
	           <div id="location">
		           <form action="set" method="post">
		           <div><h2>Your Location: </h2></div>
		           <div><input type="text" name = "locationName" size="30" value = "<s:property value='locationName'/>" /></div>
		           	<br/>
		           	<div>
		           	<input type="submit" style="width:80px; margin-left:40px" value = "set" />
		           	</div>
		           	<br/>
		           	<div style="background-color: whiteSmoke;padding:10px" ><strong>Input your location <br><br>to find the products around you!</strong></div>      	
		           </form>
	           </div>
            </div>
       </div>
</body>
</html>