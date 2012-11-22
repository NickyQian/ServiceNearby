<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
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
<style type="text/css">
html {
    height: 100%
}

body {
    height: 100%;
    margin: 10px;
    padding: 10px
}

div {
    /*border: 1px solid;*/
}

.item1, .item2 {
border-collapse: collapse;
border: 1px solid;
margin: 5px;
}

td, th{
    /*border: 1px solid;*/
}
.img {
    height: 142px;
    width: 225px;
}
</style>
</head>
<body>
    <!---------------------------------------------- head div -------------------------------------------->
    <div style="margin-left: 20px;">
    <div id="gh" class="gh-w gh-pre1120 gh-site-0">
        <table id="gh-t">
            <tbody>
                <tr>
                    <td id="gh-l">
                        <a href="http://www.ebay.com" _sp="m570.l2586" id="gh-la">eBay<img alt="" src="http://p.ebaystatic.com/aw/pics/s.gif" id="gh-logo" border="0"></a>
                    </td>
                    <td id="gh-d" style="visibility: visible; ">
                        <a href="http://deals.ebay.com/black-friday-cyber-monday" _sp="m570.l2611" class="gh-his" id="gh-holidayS"><img alt="" src="http://pics.ebaystatic.com/aw/mops/2012_doodles/Holiday/Small/Img02_Week_4_Elf_BF_Deals_158x59.jpg" title="Shop Deals" border="0"></a>
                    </td>
                    <td id="gh-u">
                        <span id="gh-ug">Welcome! <a _sp="m570.l1524" class="gh-a" href="https://signin.ebay.com/ws/eBayISAPI.dll?SignIn&amp;ru=http%3A%2F%2Fwww.ebay.com%2Fsch%2Fi.html%3F_trksid%3Dp2050601.m570.l1313%26_nkw%3Diphone%26_sacat%3D0%26_from%3DR40" rel="nofollow">Sign in</a> or <a _sp="m570.l2621" class="gh-a" href="https://scgi.ebay.com/ws/eBayISAPI.dll?RegisterEnterInfo&amp;ru=http%3A%2F%2Fwww.ebay.com%2Fsch%2Fi.html%3F_trksid%3Dp2050601.m570.l1313%26_nkw%3Diphone%26_sacat%3D0%26_from%3DR40" id="registerLink" rel="nofollow">register</a></span>
                        <!--bucks-->
                        <span id="gh-um"><bucks></bucks></span>
                        <!--/bucks-->
                    </td>
                </tr>
            </tbody>
        </table>
        <ul id="gh-eb" class="gh-clearfix">
            <li class="gh-eb-li" id="gh-eb-search">
            <form action="http://www.ebay.com/sch/i.html" method="get" id="gh-eb-searchForm">
                <input type="hidden" value="R40" name="_from">
                <input type="hidden" value="m570.l2736" name="_trksid">
                <input type="text" name="_nkw" id="gh-eb-searchTxt" title="Enter your search keyword">
                <input type="submit" id="gh-eb-searchBtn" value="Go"></form>
            </li>
            <li class="gh-eb-li" id="gh-eb-My">
                <a _sp="m570.l2919" class="gh-eb-li-a" href="http://my.ebay.com/ws/eBayISAPI.dll?MyEbay&amp;gbh=1">My eBay</a>
            </li>
            <li class="gh-eb-li" id="gh-eb-Sell">
                <a _sp="m570.l1528" class="gh-eb-li-a" href="http://cgi5.ebay.com/ws/eBayISAPI.dll?aidZ153=&amp;MfcISAPICommand=SellHub3">Sell</a>
            </li>
            <li class="gh-eb-li" id="gh-eb-Comm">
                <a _sp="m570.l1540" class="gh-eb-li-a" href="http://community.ebay.com">Community</a>
            </li>
            <li class="gh-eb-li" id="gh-eb-Cust">
                <a _sp="m570.l1545" class="gh-eb-li-a" href="http://ocs.ebay.com/ws/eBayISAPI.dll?CustomerSupport">Customer Support</a>
            </li>
            <li class="gh-eb-li" id="gh-cart">
                <a _sp="m570.l2633" class="gh-eb-li-a" href="http://cart.payments.ebay.com/sc/view">Cart</a>
            </li>
        </ul>
        <div class="gh-cb">
            <b class="gh-cb1"></b>
            <b class="gh-cb2"></b>
            <b class="gh-cb3"></b>
            <b class="gh-cb4"></b>
        </div><ul class="gh-nav gh-clearfix">
        <li class="gh-nav-li">
            <a class="gh-nav-li-a" title="All Categories" _sp="m570.l1620" href="http://shop.ebay.com/allcategories/all-categories">CATEGORIES</a>
        </li>
        <li class="gh-nav-li" id="gh-nav-arw">
            <a class="gh-nav-li-a" title="Show all Categories" href="#"><b id="gh-nav-arwb">&nbsp;</b></a>
        </li>
        <li class="gh-nav-li">
            <a class="gh-nav-li-a" title="Your shopping destination for the best selection and value in electronics and accessories" _sp="m570.l2959" href="http://www.ebay.com/electronics">ELECTRONICS</a>
        </li>
        <li class="gh-nav-li">
            <a class="gh-nav-li-a" title="Your new destination for Clothing, Shoes &amp; Accessories on eBay" _sp="m570.l2624" href="http://www.ebay.com/fashion">FASHION</a>
        </li>
        <li class="gh-nav-li">
            <a class="gh-nav-li-a" title="Buy and sell cars, trucks, vehicle parts, and accessories" _sp="m570.l2597" href="http://www.ebay.com/motors">MOTORS</a>
        </li>
        <li class="gh-nav-li">
            <a class="gh-nav-li-a" title="Tickets - Sports, Concerts, Theater and More on eBay" _sp="m570.l1624" href="http://www.ebay.com/tickets/">TICKETS</a>
        </li>
            <li class="gh-nav-li">
                <a class="gh-nav-li-a" title="Great items, deep discounts, and free shipping!" _sp="m570.l2625" href="http://deals.ebay.com/">DEALS</a>
            </li>
            <li class="gh-nav-li"><a class="gh-nav-li-a" title="Free local classifieds in your area" _sp="m570.l2626" href="http://www.ebayclassifieds.com">CLASSIFIEDS</a>
            </li><li id="gh-rp3">
            <a id="gh-rp3a" _sp="m570.l2615" href="http://pages.ebay.com/coverage/index.html"><i class="gh-hdn">eBay Buyer Protection -- Learn more</i>
            </a>
        </li>
    </div>
    </div>
    <!---------------------------------------------- split line -------------------------------------------->
    <br />
    <div style="margin-left: 20px; margin-top:5px;">
        <div >
            Your Position: <input id="address" type="textbox" value=""
                onkeydown="keySubmit()"> <input type="button" id="submitLoc"
                value="LOCATE" onclick="codeAddress()">
        </div>
        <!----------------------------------------------- first item ------------------------------------------>
        <div>
            <table class = "item1">
                <tbody>
                    <tr>
                        <td style = "width:25%">
                            <a href = "#">
                            <img src = "http://thumbs3.ebaystatic.com/d/l225/m/my0vy-RgnhVBALirMFhHCaA.jpg" class="img" alt="Apple iPhone 4 - 16GB - Black (AT&amp;T) Smartphone (MC318LL/A)">
                            </a>
                        </td>
                        <td style = "width:60%">
                            <div>
                                <a href="#" title="Apple iPhone 4 - 16GB - Black (AT&amp;T) Smartphone (MC318LL/A)" itemprop="name">Apple iPhone 4 - 16GB - Black (AT&amp;T) Smartphone (MC318LL/A)</a>
                            </div>
                            <div>
                                <div></div>
                                <div>Returns: Not accepted</div>
                                <div></div>
                            </div>                               
                        </td>
                        <td style = "width:5%">
                           <div>5 bids</div>
                        </td>
                        <td style = "width:5%">
                            <div>$242.50</div>
                        </td>
                        <td style = "width:5%">
                            <b>Time left:</b>   
                            <span class="tme">
                                <b class="hidlb">Time left:</b>
                                <span>1h&nbsp;49m</span>
                            </span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!----------------------------------------------- second item ------------------------------------------>
        <div>
            <table class = "item2" >
                <tbody>
                    <tr>
                        <td style = "width:25%">
                            <a href="http://www.ebay.com/itm/Wise-Food-60-Srv-Entree-Emergency-Survival-Food-Bucket-Dehydrated-Freeze-Dried-/370628752799?pt=LH_DefaultDomain_0&amp;hash=item564b31f59f">
                            <img src="http://thumbs4.ebaystatic.com/d/l225/m/m-IG-xqHA8Ljm3HF7HjfLkw.jpg" alt="Wise Food 60 Srv Entree Emergency Survival Food Bucket Dehydrated Freeze Dried " class = "img">
                            </a>
                        </td>
                        <td style = "width:60%">
                            <div>
                                <a href="http://www.ebay.com/itm/Wise-Food-60-Srv-Entree-Emergency-Survival-Food-Bucket-Dehydrated-Freeze-Dried-/370628752799?pt=LH_DefaultDomain_0&amp;hash=item564b31f59f" title="Wise Food 60 Srv Entree Emergency Survival Food Bucket Dehydrated Freeze Dried ">Wise Food 60 Srv Entree Emergency Survival Food Bucket Dehydrated Freeze Dried </a>
                            </div>
                            <div>Buy Now! Manufacturer's Price Increase November 1, 2012</div>
                            <div>Expedited shipping available</div>
                            <div>
                            <div>Returns: Accepted within 60 days</div>
                            </div>                                    
                        </td>
                        <td style = "width:5%">
                            <span><div>Buy It Now</div></span>
                        </td>
                        <td style = "width:5%">
                            <div>$119.99</div>                       
                            <span>Free shipping</span>
                        </td>
                        <td style = "width:5%">
                            <b>Time left:</b>
                            <span>11d&nbsp;9h&nbsp;8m</span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div id="map_canvas" style="width: 60%; height: 70%; margin-left: 20px;float:left;">
    </div>
    <!------------------------------------ right more -------------------------------->
    <div style="width:30%;height:70%;float:right">
        <table>
            <tbody>
                <tr> 
                    <td align="center">
                        <div class="nume_item nume_item140">
                            <a class="nume_imgdesc nume_imgdesc140" onclick="window.open(this.href,'_self'); return false;" href="http://www.ebay.com/itm/Wisco-560B-Large-Versatile-Commercial-Pizza-Baking-Oven-/110308972828?_trksid=p2045573.m2102&amp;_trkparms=aid%3D555001%26algo%3DPW.CURRENT%26ao%3D1%26asc%3D146%26meid%3D3640039351426150043%26pid%3D100034%26prg%3D1079%26rk%3D1%26sd%3D261129837920%26">
                                <div class="nume_image nume_image140" style="border: 1px solid #CCCCCC;vertical-align: middle;">
                                <img src="http://thumbs1.ebaystatic.com/m/mWc4J8aNqK5pz45pwgc8FjQ/140.jpg" alt="Wisco 560B Large Versatile Commercial Pizza Baking Oven" style="vertical-align: middle;">
                                </div>
                                <div class="nume_item_title">
                                Wisco 560B Large Versatile Commercial... 
                                </div>
                            </a>
                            <div class="nume_price">
                            $308.95
                            </div> 
                            <div class="link">
                            <a href="http://recommendations.ebay.com/Wisco-560B-Large-Versatile-Commercial-Pizza-Baking-Oven-/MESMR?_pvtid=110308972828&amp;_category=25369&amp;_trksid=p2045573.c100034.m1843">See suggestions</a>
                            </div>
                        </div>
                    </td>
                </tr> 
                <tr> 
                    <td align="center">
                        <div class="nume_item nume_item140">
                            <a class="nume_imgdesc nume_imgdesc140" onclick="window.open(this.href,'_self'); return false;" href="http://www.ebay.com/itm/Wisco-560D-16in-Commercial-FROZEN-CRUST-Pizza-Oven-NEW-/110428319967?_trksid=p2045573.m2102&amp;_trkparms=aid%3D555001%26algo%3DPW.CURRENT%26ao%3D1%26asc%3D146%26meid%3D3640039351426150043%26pid%3D100034%26prg%3D1079%26rk%3D2%26sd%3D261129837920%26">
                                <div class="nume_image nume_image140" style="border: 1px solid #CCCCCC;vertical-align: middle;">
                                <img src="http://thumbs4.ebaystatic.com/m/mrKieaJRz7KE3LMPuwG3M9g/140.jpg" alt="Wisco 560D 16in Commercial FROZEN CRUST Pizza Oven NEW!" style="vertical-align: middle;">
                                </div>
                            <div class="nume_item_title">
                            Wisco 560D 16in Commercial FROZEN... 
                            </div>
                            </a>
                            <div class="nume_price">
                            $299.95
                            </div> 
                            <div class="link">
                            <a href="http://recommendations.ebay.com/Wisco-560D-16in-Commercial-FROZEN-CRUST-Pizza-Oven-NEW-/MESMR?_pvtid=110428319967&amp;_category=25369&amp;_trksid=p2045573.c100034.m1843">See suggestions</a>
                            </div>
                        </div>
                    </td>
                </tr> 
                <tr> 
                    <td align="center">
                        <div>
                            <a onclick="window.open(this.href,'_self'); return false;" href="http://www.ebay.com/itm/Wisco-580-1-Hot-Food-Pizza-Warmer-Display-Merchandiser-/110308977940?_trksid=p2045573.m2102&amp;_trkparms=aid%3D555001%26algo%3DPW.CURRENT%26ao%3D1%26asc%3D146%26meid%3D3640039351426150043%26pid%3D100034%26prg%3D1079%26rk%3D3%26sd%3D261129837920%26">
                            <div style="border: 1px solid #CCCCCC;vertical-align: middle;">
                            <img src="http://thumbs1.ebaystatic.com/m/mY0sECokYE3Uo-QB2U4qTzw/140.jpg" alt="Wisco 580-1 Hot Food Pizza Warmer Display Merchandiser!" style="vertical-align: middle;">
                            </div>
                            <div class="nume_item_title">
                            Wisco 580-1 Hot Food Pizza Warmer Displ... 
                            </div>
                            </a>
                            <div>
                            $282.95
                            </div>
                            <div>
                            <a href="http://recommendations.ebay.com/Wisco-580-1-Hot-Food-Pizza-Warmer-Display-Merchandiser-/MESMR?_pvtid=110308977940&amp;_category=25369&amp;_trksid=p2045573.c100034.m1843">See suggestions</a>
                            </div>
                        </div>
                    </td>
                </tr>
</tbody></table>
    </div>  
  
</body>
</html>
