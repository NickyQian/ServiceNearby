<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>search results</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<link href="./css/head1.css" type="text/css" rel="stylesheet">
<link href="./css/head2.css" type="text/css" rel="stylesheet">
<link href="./css/head3.css" type="text/css" rel="stylesheet">
<script type="text/javascript"
    src="https://maps.google.com/maps/api/js?libraries=geometry&sensor=false">
</script>
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/location.js"></script>
<link href="./css/common.css" type="text/css" rel="stylesheet">
<style type="text/css">
html {
    height: 100%
}

a {
cursor：pointer;
}

.item {
    background-color: whiteSmoke;
    margin-top: 5px;
    margin-bottom: 5px;
}

.item1, .item2 {
    border-collapse: collapse;
    /*border: 1px solid;*/
    margin-top: 5px;
    margin-bottom: 5px;
}

.img {
    height: 142px;
    width: 225px;
}
</style>
</head>
<body>
 	<div style = "display:none">
	    <div id="latitudeInitail"> <s:property value="location.latitude"/></div>
	    <div id="longitudeInitail"> <s:property value="location.longitude"/></div>
    </div>
    <jsp:include page="head.jsp"></jsp:include>
    <br />
    <div class= "mainBody">
        <div><form action="search" method="get">
            What's Your Interest : <input id="interest" name = "interest" type="textbox" value="<s:property value='searchresult.interest'/>"
                    onkeydown="keySubmit()"> <input type="submit" id="submitLoc"
                value="Search Now!" onclick="codeAddress()">
                </form>
        </div>
        <!----------------------------------------------- first item ------------------------------------------>
        <s:iterator value="searchresult.products" status="st">
           	<div>
            <table class = "item<s:property value="#st.index+1"/> item">
                <tbody>
                    <tr>
                        <td style = "width:25%">
                            <a href = "showdetail?id=<s:property value='id'/>">
                           <img src="<s:property value='imgUrl'/>" class="img" alt="<s:property value='title'/>">
                            </a>
                        </td>
                        <td style = "width:55%">
                            <div>
                                <a id="title<s:property value="#st.index+1"/>" href="showdetail?id=<s:property value='id'/>" title="<s:property value='title'/>" itemprop="name"><s:property value='title'/></a>
                            </div>
                            <div style = "display:none">
                            <div id="latitude<s:property value="#st.index+1"/>"> <s:property value="location.latitude"/></div>
                            <div id="longitude<s:property value="#st.index+1"/>"> <s:property value="location.longitude"/></div>
                            </div>
                            <div>
                                <div></div>
                                <div style = "margin:10px;">Location: <s:property value='location.name'/></div>
                                <div></div>
                            </div>                               
                        </td>
                        <td style = "width:10%">
                            Top Seller     <!--  : <s:property value='seller.isTopSeller	'/> -->
                        </td>
                        <td style = "width:5%">
                            <div><s:property value='price'/></div>
                        </td>
                        <td style = "width:10%">
                            <b><a href="showdetail?id=<s:property value='id'/>">Buy It Now!</a></b>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
		</s:iterator>
        <div>     
        
            
        </div>
    </div>
    <div id="map_canvas" style="width: 70%; height: 69%; margin-left: 25px;float:left;">
    </div>
        <!------------------------------------ right more -------------------------------->
        <div style="width:30%;height:70%;float:right;margin-right:-45px">
            <table>
                <tbody>
                 <s:iterator value="searchresult.productsBelow" >
                	 <tr>
                        <td align="center">
                            <div class = "item" style="width:263px;">
                                <a>
                                    <div style="vertical-align: middle;">
                                    <img src="<s:property value='imgUrl'/>" alt="<s:property value='title'/>" style="vertical-align: middle;width:140px;height:80px">
                                    </div>
                                    <div>
                                    	<a href = "showdetail?id=<s:property value='id'/>"><s:property value='title'/></a>
                                    </div>
                                </a>
                                <div>
                                	<s:property value='price'/>
                                </div> 
                            </div>
                        </td>
                    </tr>
                 </s:iterator>
                    <tr> 
                        <td align="center">
                            <div class = "item">
                                <a>
                                    <div style="vertical-align: middle;">
                                    <img class = "img" src="./img/cholocate.jpg" alt="Wisco 560B Large Versatile Commercial Pizza Baking Oven" style="vertical-align: middle;">
                                    </div>
                                    <div>
                                    Wisco 560B Large Versatile Commercial... 
                                    </div>
                                </a>
                                <div>
                                $308.95
                                </div> 
                            </div>
                        </td>
                    </tr>
                    <tr> 
                        <td align="center">
                            <div class = "item">
                                <a>
                                    <div style="vertical-align: middle;">
                                    <img class = "img" src="./img/lays.jpg" alt="Wisco 560D 16in Commercial FROZEN CRUST Pizza Oven NEW!" style="vertical-align: middle;">
                                    </div>
                                <div>
                                Wisco 560D 16in Commercial FROZEN... 
                                </div>
                                </a>
                                <div>
                                $299.95
                                </div> 
                            </div>
                        </td>
                    </tr> 
                </tbody>
            </table>
        </div>
</body>
</html>
