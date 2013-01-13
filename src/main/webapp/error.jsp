<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="http://gh.ebaystatic.com/header/css/min?combo=2&amp;factor=CLASSIC&amp;rvr=72&amp;h=17735">
<link href="http://ir.ebaystatic.com/z/yf/0rygboh5l25mpp0xqptnckjup.css?dataUri=true" type="text/css" rel="stylesheet">
<link href="http://ir.ebaystatic.com/z/mp/vtepmlq5di5djnuwo1khbcq3f.css?dataUri=true" type="text/css" rel="stylesheet">
<title>Error</title>
</head>
<body style="margin:0 auto; text-align:center;">

<jsp:include page="head.jsp"></jsp:include>
   		<div><form action="search" method="get">
            What's Your Interest : <input id="interest" name = "interest" type="textbox" value=""
                    onkeydown="keySubmit()"> <input type="submit" id="submitLoc"
                value="Search Now!" onclick="codeAddress()">
                </form>
        </div>
<div><h2>Sorry, no search results.  Please try again.</h2></div>
</body>
</html>