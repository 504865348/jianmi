<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="Keywords" content="江苏大学兼职网 镇江兼米网  江苏兼米网  镇江兼米网  ">
	<meta name="Description" content="兼米网--一家靠谱的兼职平台">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/business.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>
	<title>商家信息</title>  
</head>
  <body>
<div class="center-block"><!-- article begin -->
	<ul class="list-group">
		<li class="list-group-item"><img src="<%=request.getContextPath()%>${business.logo}"><!-- 商家图标 --></li>
		<li class="list-group-item"><span>${business.bname}</span><!-- 商家名称 --></li>
		<li class="list-group-item"><span>${business.city}</span><!-- 所在城市 --></li>
		<li class="list-group-item"><span>${business.area}</span><!-- 所在地区 --></li>
		<li class="list-group-item"><span>公司地址：${business.address}</span><!-- address --></li>
		<li class="list-group-item"><span>负责人：${business.person}</span><!-- person --></li>
		<li class="list-group-item"><span>负责人手机号码：${business.pertel}</span><!-- phone --></li>
		<li class="list-group-item"><span>商家简介：${business.summary}</span><!-- summary --></li>
		<li class="list-group-item"><img src="<%=request.getContextPath()%>${loginBusiness.pic1}" class="img-responsive" style="width:100px;height:auto;"><!-- summary --></li>
	</ul>
	</div>
  </body>
</html>
