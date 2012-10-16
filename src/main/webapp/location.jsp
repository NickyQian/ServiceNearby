<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
html {
	height: 100%
}

body {
	height: 100%;
	margin: 0px;
	padding: 0px
}
</style>
<script type="text/javascript"
	src="https://maps.google.com/maps/api/js?libraries=geometry&sensor=false">
	
</script>
<script type="text/javascript" src="./js/location.js"></script>
</head>
<body onload="initialize()">
	<br />
	<div style="margin-left: 40px">
		Your Position: <input id="address" type="textbox" value=""
			onkeydown="keySubmit()"> <input type="button" id="submitLoc"
			value="LOCATE" onclick="codeAddress()">
	</div>
	<br />
	<div id="map_canvas" style="width: 90%; height: 70%; margin-left: 40px"></div>
</body>
</html>
