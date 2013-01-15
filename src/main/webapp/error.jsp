<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./css/head1.css" type="text/css" rel="stylesheet">
<link href="./css/head2.css" type="text/css" rel="stylesheet">
<link href="./css/head3.css" type="text/css" rel="stylesheet">
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