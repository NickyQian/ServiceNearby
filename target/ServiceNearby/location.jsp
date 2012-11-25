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
<link href="./css/common.css" type="text/css" rel="stylesheet">
<style type="text/css">
html {
    height: 100%
}

.item1, .item2 {
border-collapse: collapse;
border: 1px solid;
margin: 5px;
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
        <div >
            What's Your Interest : <input id="address" type="textbox" value=""
                onkeydown="keySubmit()"> <input type="button" id="submitLoc"
                value="Search Now!" onclick="codeAddress()">
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
    <div id="map_canvas" style="width: 60%; height: 70%; margin-left: 25px;float:left;">
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
                </tbody>
            </table>
        </div>  
</body>
</html>
