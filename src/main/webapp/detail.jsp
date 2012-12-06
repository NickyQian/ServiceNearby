<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/detail.css" />
<link rel="stylesheet" type="text/css" href="http://gh.ebaystatic.com/header/css/min?combo=2&amp;factor=CLASSIC&amp;rvr=72&amp;h=17735">
<link href="http://ir.ebaystatic.com/z/yf/0rygboh5l25mpp0xqptnckjup.css?dataUri=true" type="text/css" rel="stylesheet">
<link href="http://ir.ebaystatic.com/z/mp/vtepmlq5di5djnuwo1khbcq3f.css?dataUri=true" type="text/css" rel="stylesheet">
<link href="./css/common.css" type="text/css" rel="stylesheet">
<link href="./css/detail.css" type="text/css" rel="stylesheet">
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" type="text/css" rel="stylesheet">
<script type="text/javascript"
    src="https://maps.google.com/maps/api/js?libraries=geometry&sensor=false">
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
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
                                    <input class = "btn" type="submit" value="Avalible : 2" title="" onclick="javascript:return false;">
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
        <div style = "padding:5px;margin-top:5px;background-color: whiteSmoke">
            <h3>Item specifics</h3>
                <table width="100%" cellspacing="0" cellpadding="0" style = "height:200px;">
                    <tbody>
                        <tr>
                            <td>Condition:</td>                                
                                    <td width="50.0%">
                                        <!-- ITEM CONDITION  -->
                                                <!-- If Attribute is having hidden text / link   -->            
                                                    <div style = "margin:10px">
                                                        New: A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is <span>
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
            <div style = "position:relative;margin-top:5px;background-color: whiteSmoke;height:80%;">
                <div style = "width:48%;">
                    <div style = "text-align:center"><img class = "imgBig" src = "./img/test1.jpg" />
                    </div>
                    <div>
                            <font color="#fb0034" size="4" face="Comic Sans MS">Our peanut clusters are made daily in our commercial kitchen. We use large premium Virginia peanuts and our finest gourmet chocolate. This is a 1 pound listing. Makes&nbsp;the perfect gift ! Shipped US Priority mail for $6.95.
                            </font>
                    </div>
                </div>
                <div style = "height:400px;width:48%;position:absolute;left:49%;top:5px">
                    <div>Location: Zhangjiang hi-tech Park, Shanghai</div>
                    <div id="map_canvas" style="width: 100%;height:100%;margin-top: 5px;">
                    </div>
                </div>
            </div>

            <div style = "background-color: whiteSmoke;margin-top:10px;">
                <div>
                    <h3>Questions and answers about this item</h3>
                </div>
                <div>
                    No questions or answers have been posted about this item.
                </div>
                <div>
                    <a href="http://contact.ebay.com/ws/eBayISAPI.dll?ShowSellerFAQ&amp;iid=271110393721&amp;requested=thechocolateshoppe121&amp;redirect=0&amp;frm=284&amp;rt=nc&amp;_trksid=p2047675.l1499&amp;ssPageName=PageSellerM2MFAQ_VI">Ask a question</a>
                </div>
            </div>
    </div>
    <div class = "buyBox">
        sdfsdfsdfsdfsdaf
    </div>
</body>
</html>