<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>search results</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<link rel="stylesheet" type="text/css" href="http://gh.ebaystatic.com/header/css/min?combo=2&amp;factor=CLASSIC&amp;rvr=72&amp;h=17735">
<link href="http://ir.ebaystatic.com/z/yf/0rygboh5l25mpp0xqptnckjup.css?dataUri=true" type="text/css" rel="stylesheet">
<link href="http://ir.ebaystatic.com/z/mp/vtepmlq5di5djnuwo1khbcq3f.css?dataUri=true" type="text/css" rel="stylesheet">
<script type="text/javascript"
    src="https://maps.google.com/maps/api/js?libraries=geometry&sensor=false">
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
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
            <table class = "item1 item">
                <tbody>
                    <tr>
                        <td style = "width:25%">
                            <a href = "showdetail?id=<s:property value='id'/>">
                           <img src="<s:property value='imgUrl'/>" class="img" alt="<s:property value='title'/>">
                            </a>
                        </td>
                        <td style = "width:55%">
                            <div>
                                <a href="showdetail?id=<s:property value='id'/>" title="<s:property value='title'/>" itemprop="name"> <s:property value="#st.index+1"/>、<s:property value='title'/></a>
                            </div>
                            <div style = "display:none">
                            <div id="latitude<s:property value="#L.index+1"/>"> <s:property value="location.latitude"/></div>
                            <div id="longitude<s:property value="#L.index+1"/>"> <s:property value="location.longitude"/></div>
                            </div>
                            <div>
                                <div></div>
                                <div style = "margin:10px;">Location: <s:property value='location.name'/></div>
                                <div></div>
                            </div>                               
                        </td>
                        <td style = "width:10%">
                            Top Seller : <s:property value='seller.isTopSeller	'/>
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
            <table class = "item1 item">
                <tbody>
                    <tr>
                        <td style = "width:25%">
                            <a href = "#">
                           <img src="http://thumbs2.ebaystatic.com/d/l225/m/myT6iRxOjxXFAASRLyfvX1Q.jpg" class="img" alt="5 packs Lay's Potato Chips, various flavor, 80g each bag">
                            </a>
                        </td>
                        <td style = "width:55%">
                            <div>
                                <a href="#" title="Apple iPhone 4 - 16GB - Black (AT&amp;T) Smartphone (MC318LL/A)" itemprop="name">Apple iPhone 4 - 16GB - Black (AT&amp;T) Smartphone (MC318LL/A)</a>
                            </div>
                            <div>
                                <div></div>
                                <div style = "margin:10px;">Location: Zhangjiang hi-tech Park, Shanghai</div>
                                <div></div>
                            </div>                               
                        </td>
                        <td style = "width:10%">
                            Top Seller
                           <img src="http://pics.ebaystatic.com/aw/pics/s.gif" alt="The item is listed as a Top Rated Plus item">
                        </td>
                        <td style = "width:5%">
                            <div>$242.50</div>
                        </td>
                        <td style = "width:10%">
                            <b>Buy It Now!</b>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!----------------------------------------------- second item ------------------------------------------>
        <div>
            <table class = "item2 item">
                <tbody>
                    <tr>
                        <td style = "width:25%">
                            <a href="http://www.ebay.com/itm/Wise-Food-60-Srv-Entree-Emergency-Survival-Food-Bucket-Dehydrated-Freeze-Dried-/370628752799?pt=LH_DefaultDomain_0&amp;hash=item564b31f59f">
                            <img src="http://thumbs3.ebaystatic.com/d/l225/m/mR8Ky6qBBPrwdeUQs6IfIRw.jpg" class="img" alt="FERRERO - Kinder Chocolate - 300 g = 24 pc">
                            </a>
                        </td>
                        <td style = "width:55%">
                            <div>
                                <a href="http://www.ebay.com/itm/Wise-Food-60-Srv-Entree-Emergency-Survival-Food-Bucket-Dehydrated-Freeze-Dried-/370628752799?pt=LH_DefaultDomain_0&amp;hash=item564b31f59f" title="Wise Food 60 Srv Entree Emergency Survival Food Bucket Dehydrated Freeze Dried ">Wise Food 60 Srv Entree Emergency Survival Food Bucket Dehydrated Freeze Dried </a>
                            </div>
                            <div>
                            <div style = "margin:10px;">Location: No.3663, ZhongShan North Road, PuTuo, Shanghai</div>
                            </div>                                    
                        </td>
                        <td style = "width:10%">
                            Top Seller
                            <img src="http://pics.ebaystatic.com/aw/pics/s.gif" alt="The item is listed as a Top Rated Plus item">
                        </td>
                        <td style = "width:5%">
                            <div>$119.99</div>                       
                        </td>
                        <td style = "width:10%">
                            <b>Buy It Now!</b>
                        </td>
                    </tr>
                </tbody>
            </table>
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
                                    <img src="http://thumbs1.ebaystatic.com/m/mWc4J8aNqK5pz45pwgc8FjQ/140.jpg" alt="Wisco 560B Large Versatile Commercial Pizza Baking Oven" style="vertical-align: middle;">
                                    </div>
                                    <div>
                                    Wisco 560B Large Versatile Commercial... 
                                    </div>
                                </a>
                                <div>
                                $308.95
                                </div> 
                                <div>
                                <a href="http://recommendations.ebay.com/Wisco-560B-Large-Versatile-Commercial-Pizza-Baking-Oven-/MESMR?_pvtid=110308972828&amp;_category=25369&amp;_trksid=p2045573.c100034.m1843">See suggestions</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr> 
                        <td align="center">
                            <div class = "item">
                                <a>
                                    <div style="vertical-align: middle;">
                                    <img src="http://thumbs4.ebaystatic.com/m/mrKieaJRz7KE3LMPuwG3M9g/140.jpg" alt="Wisco 560D 16in Commercial FROZEN CRUST Pizza Oven NEW!" style="vertical-align: middle;">
                                    </div>
                                <div>
                                Wisco 560D 16in Commercial FROZEN... 
                                </div>
                                </a>
                                <div>
                                $299.95
                                </div> 
                                <div>
                                <a href="http://recommendations.ebay.com/Wisco-560D-16in-Commercial-FROZEN-CRUST-Pizza-Oven-NEW-/MESMR?_pvtid=110428319967&amp;_category=25369&amp;_trksid=p2045573.c100034.m1843">See suggestions</a>
                                </div>
                            </div>
                        </td>
                    </tr> 
                    <tr> 
                        <td align="center">
                            <div class = "item">
                                <a>
                                <div style="vertical-align: middle;">
                                <img src="http://thumbs1.ebaystatic.com/m/mY0sECokYE3Uo-QB2U4qTzw/140.jpg" alt="Wisco 580-1 Hot Food Pizza Warmer Display Merchandiser!" style="vertical-align: middle;">
                                </div>
                                <div>
                                Wisco 580-1 Hot Food Pizza Warmer Displ... 
                                </div>
                                </a>
                                <div>
                                $95
                                </div>
                                <div>
                                <a href="http://recommendations.ebay.com/Wisco-580-1-Hot-Food-Pizza-Warmer-Display-Merchandiser-/MESMR?_pvtid=110308977940&amp;_category=25369&amp;_trksid=p2045573.c100034.m1843">See suggestions</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
</body>
</html>
