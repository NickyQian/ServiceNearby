<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
	请选择你的位置：
	<br />
	<br />
	<select id="province">
		<option value="EMPTY" selected="selected">请选择</option>
		<option value="SH">上海</option>
	</select>
	省
	<select id="city">
		<option value="EMPTY" selected="selected">请选择</option>
		<option value="SH">上海</option>
	</select>
	市
	<br />
	<br />
	<select id="district">
		<option value="EMPTY" selected="selected">请选择</option>
		<option value="BS">宝山</option>
		<option value="PD">浦东</option>
		<option value="PT">普陀</option>
		<option value="JA">静安</option>
		<option value="ZB">闸北</option>
		<option value="HK">虹口</option>
		<option value="YP">杨浦</option>
		<option value="JD">嘉定</option>
		<option value="CN">长宁</option>
		<option value="HP">黄浦</option>
		<option value="LW">卢湾</option>
		<option value="XH">徐汇</option>
		<option value="MH">闵行</option>
	</select>
	区
	<br />
	<br />
	详细地址<input type="text" id="detail"/>
	<br />
	<br />
	<button onclick="save()">保存</button>
	</h3>
</body>
</html>