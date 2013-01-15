<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
    <s:property value="detail.test" />
    <div class = "mainBody">
        <div style = "background-color: whiteSmoke">
            <table>
                <tr>
                    <td>
                        <div><img class = "img" src = "<s:property value='detail.titleImg' />" /></div>
                    </td>
                    <td>
                        <table style = "margin-left:20px;">
                            <tr>
                                <td>
                                   Price: <s:property value="detail.price" />
                                </td>
                                <td>
                                    Avalible Date : <s:property value="detail.avalibleDateStart"/> ~ <s:property value="detail.avalibleDateEnd"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                    Avalible Time:
                                </td>
                            </tr>
                            <tr style = "text-align:center" id = "time">
                                <td>10:00 - 12:00</td>
                                <td>12:00 - 17:00</td>
                                <td>17:00 - 20:00</td>
                            </tr>
                            <tr>
                                <td style = "width:33%">
                                    <input class = "btn" type="button" value="Avalible : <s:property value="detail.quantity1"/>" title="" >
                                </td>
                                <td style = "width:33%">
                                    <input class = "btn" type="button" value="Avalible : <s:property value="detail.quantity2"/>" title="" >
                                </td>
                                <td style = "width:33%">
                                    <input class = "btn" type="button" value="Avalible : <s:property value="detail.quantity3"/>" title="" >
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
                                                        <s:property value="detail.title"/>
                                                        </div>
                                                        </td>
                                <td>Brand: </td>                                        
                                    <td width="50.0%">
                                        <s:property value="detail.productBrand"/></td>
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
                                <td width="50.0%"><span style = "margin:10px;"><s:property value="detail.type"/></span></td>
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
                    <div style = "text-align:center"><img class = "imgBig" src = "<s:property value="detail.detailImg" />" />
                    </div>
                    <div>
                            <font color="#fb0034" size="4" face="Comic Sans MS">
                            <s:property value="detail.detail" />
                            </font>
                    </div>
                </div>
                <div style = "height:400px;width:48%;position:absolute;left:49%;top:5px">
                    <div>Location: <s:property value="detail.locationName" /></div>
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
                    <a href="javascript:void(0)">Ask a question</a>
                </div>
            </div>
    </div>
    <div class = "buyBox">
        <div style = "font-size: 15px; font-weight: bold;">
            A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is applicable)
        </div>
        <div>
            <table style="margin: 10px 0 10px 0">
                <tbody>
                    <tr>
                        <td>
                            <div>time :</div>
                        </td>   
                        <td>
                            <div id = "interval"></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>Quantity:</div>
                        </td>
                        <td>
                            <input type="text" size="4" value="1" name="quantity" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
            <span class="qtyTxt"><span id="qtySubTxt">
                Limited quantity available / <s:property value="detail.soldQuantities"/> sold</span>
        </div>
    </div>
</body>
</html>