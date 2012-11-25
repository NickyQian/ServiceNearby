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
    Choose your location：
    <br />
    <br />
    <div>
        Province: 
        <select id="province">
            <option value="EMPTY" selected="selected">Select...</option>
            <option value="SH">Shanghai</option>
        </select>
    </div>
    <div>
        City:
        <select id="city">
            <option value="EMPTY" selected="selected">Select...</option>
            <option value="SH">Shanghai</option>
        </select>
    </div>  
    <br />
    <div>
        District
        <select id="district">
            <option value="EMPTY" selected="selected">Select...</option>
            <option value="BS">BaoShan</option>
            <option value="PD">PuDong</option>
            <option value="PT">PuTuo</option>
            <option value="JA">JingAn</option>
            <option value="ZB">ZhaBei</option>
            <option value="HK">HongKou</option>
            <option value="YP">YangPu</option>
            <option value="JD">JiaDing</option>
            <option value="CN">ChangNing</option>
            <option value="HP">HuangPu</option>
            <option value="XH">XuHui</option>
            <option value="MH">MinHang</option>
        </select>
    </div>
    <br />
    <br />
    Detail Address<input type="text" id="detail"/>
    <br />
    <br />
    <button onclick="save()">Save</button>
    </h3>
</body>
</html>