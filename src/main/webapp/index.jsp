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
        String province = "Shanghai";
        String city = "Shanghai";
        String district = "Putuo";
        String detailLoc = "ECNU";

        boolean hasSetLoc = true;
        
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
    <jsp:include page="head.jsp"></jsp:include>
    <br>
    <div class = "mainBody">
    <s:property value="indexvo.test"/>
        <div class = "top">
            <div><form action="search" method="get">
                What's Your Interest : <input id="interest" name = "interest" type="textbox" value=""
                    onkeydown="keySubmit()"> <input type="submit" id="submitLoc"
                    value="Search Now!" onclick="codeAddress()">
                  </form>
            </div>
    <!--         <div id="searchBox">
                <form method="get" action="">
                    <input type="text" name="location"> <input type="submit"
                        value="搜索!">
                </form>
            </div> -->
            <div id="hotImages">
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
           <input type="text" name = "locationName" value = "1" />
           	<input type="submit" value = "set" />
           </form>
                <div id="displayLoc" style="display: none">
                    <jsp:include page="displaylocation.jsp">
                        <jsp:param name="province" value="<%=URLEncoder.encode(province)%>"></jsp:param>
                        <jsp:param name="city" value="<%=URLEncoder.encode(city)%>"></jsp:param>
                        <jsp:param name="district" value="<%=URLEncoder.encode(district)%>"></jsp:param>
                        <jsp:param name="detailLoc"
                            value="<%=URLEncoder.encode(detailLoc)%>"></jsp:param>
                    </jsp:include>
                </div>

                <div id="resetLoc" style="display: none">
                    <jsp:include page="setlocation.jsp">
                        <jsp:param name="1" value=""></jsp:param>
                    </jsp:include>
                </div>
            </div>
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