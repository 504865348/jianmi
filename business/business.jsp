<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
 <head>
	<meta charset="UTF-8">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/business.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>	
	<style>
		a span{
			margin-right:10px;
		}
	</style>
</head>
<body class="list-group">
	<c:if test="${empty loginBusiness}"><script>alert('您还没有登录!');window.location.href="/business/businesslogin.jsp";</script></c:if>
	<a href="/jzme.jsp" class="list-group-item"><span class="glyphicon glyphicon-home"></span>首页</a>
	<a href="/business/addjob.jsp"class="list-group-item"><span class="glyphicon glyphicon-list"></span>发布兼职</a>
	<a href="/business/binformation.jsp"class="list-group-item"><span class="glyphicon glyphicon-user"></span>商家信息</a>
	<a href="/business/bchange.jsp"class="list-group-item"><span class="glyphicon glyphicon-cog"></span>修改资料</a>
	<a href="/business/bchangepassword.jsp"class="list-group-item"><span class="glyphicon glyphicon-th"></span>修改密码</a>
	<a href="/ListJobServlet?id=2&pNum=1"class="list-group-item"><span class="glyphicon glyphicon-list-alt"></span>查看兼职</a>
	<a href="/BJobServlet?pNum=1"class="list-group-item"><span class="glyphicon glyphicon-align-justify"></span>兼职信息</a>
	<a href="/ListCommentServlet?id=2&pNum=1&bid=${loginBusiness.bid}"class="list-group-item"><span class="glyphicon glyphicon-edit"></span>我的评论</a>
	<a href="/invalidate.jsp"class="list-group-item"><span class="glyphicon glyphicon-off"></span>注销</a>
</body>
</html>
