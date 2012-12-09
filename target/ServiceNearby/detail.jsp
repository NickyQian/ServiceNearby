<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/homepage.css" />
<link rel="stylesheet" type="text/css" href="http://gh.ebaystatic.com/header/css/min?combo=2&amp;factor=CLASSIC&amp;rvr=72&amp;h=17735">
<link href="http://ir.ebaystatic.com/z/yf/0rygboh5l25mpp0xqptnckjup.css?dataUri=true" type="text/css" rel="stylesheet">
<link href="http://ir.ebaystatic.com/z/mp/vtepmlq5di5djnuwo1khbcq3f.css?dataUri=true" type="text/css" rel="stylesheet">
<link href="./css/common.css" type="text/css" rel="stylesheet">
<link href="./css/detail.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="./js/detail.js"></script>
<title>Product Detail</title>
</head>
<body>
    <jsp:include page="head.jsp"></jsp:include>
    <div class = "mainBody">
        <div style = "background-color: whiteSmoke">
            <table>
                <tr>
                    <td>
                        <div><img class = "img" src = "http://thumbs2.ebaystatic.com/d/l225/m/myT6iRxOjxXFAASRLyfvX1Q.jpg" /></div>
                    </td>
                    <td>
                        <table style = "margin-left:20px;">
                            <tr>
                                <td>
                                    Price:$215
                                </td>
                                <td>
                                    Avalible Date : 2012-11-10 ~ 2012-12-20
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                    Avalible Time:
                                </td>
                            </tr>
                            <tr style = "text-align:center">
                                <td>10:00 - 12:00</td>
                                <td>12:00 - 17:00</td>
                                <td>17:00 - 20:00</td>
                            </tr>
                            <tr>
                                <td style = "width:33%">
                                    <input class = "btn" type="submit" value="Avalible : 2" title="" onclick="javascript:return foralse;">
                                </td>
                                <td style = "width:33%">
                                    <input class = "btn" type="submit" value="Avalible : 3" title="" onclick="javascript:return false;">
                                </td>
                                <td style = "width:33%">
                                    <input class = "btn" type="submit" value="Avalible : 10" title="" onclick="javascript:return false;">
                                </td>
                             </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div style = "padding:5px;">
            <h3>Item specifics</h3>
                <table width="100%" cellspacing="0" cellpadding="0" style = "height:300px;">
                    <tbody>
                        <tr>
                            <td>Condition:</td>                                      
                                    <td width="50.0%">
                                        <!-- ITEM CONDITION  -->
                                                <!-- If Attribute is having hidden text / link   -->            
                                                    <div style = "margin:10px">
                                                        New: A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is <span id="hiddenContent" class="u-dspn">
                                                                applicable). Packaging should be the same as what is found in a retail store, unless the item is handmade or was packaged by the manufacturer in non-retail packaging, such as an unprinted box or plastic bag. See the seller's listing for full details.<a href="http://pages.ebay.com/help/sell/contextual/condition_11.html" target="_blank" class="infoLink u-nowrap">
                                                                        See all condition definitions<b class="g-hdn">- opens in a new window or tab</b></a>
                                                                </span>
                                                            
                                                            <!-- TODO: remove hardcoded ID -->
                                                            <span id="readFull" class="infoLink u-nowrap">
                                                                ... <a href="javascript:;">Read more<b class="g-hdn">about the condition</b></a>    
                                                            </span>
                                                        </div>
                                                        </td>
                                <td>Brand: </td>                                        
                                    <td width="50.0%">
                                        Wise Foods</td>
                            </tr>
                            <tr>
                                <td>Packaging: </td>
                                     
                                <td width="50.0%">
                                        <span style = "margin:10px;">In Retail Packaging</span></td>
                                <td>QTY.: </td>
                                <td width="50.0%">
                                        <span style = "margin:10px;">1-60 Serving Container</span></td>
                            </tr>
                            <tr>
                                <td>Model: </td>
                                <td width="50.0%"><span style = "margin:10px;">W01-160</span></td>
                                <td>Type: </td>
                                <td width="50.0%"><span style = "margin:10px;">Entree Only</span></td>
                            </tr>
                            <tr>
                                <td>UPC: </td>
                                <td width="50.0%"><span style = "margin:10px;">094922015143</span></td>
                            </tr>
                    </tbody>
                </table>
            </div>
            <div><img class = "imgBig" src = "./img/test1.jpg" /></div>
    </div>

</body>
</html>