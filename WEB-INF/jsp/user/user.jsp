<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="../css/jz.css" rel="stylesheet">
	<link href="../css/user.css" rel="stylesheet">
	<link href="../images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="../bootstrap/js/jquery.js"></script>
	<script src="../bootstrap/js/bootstrap.js"></script>
	<title>个人中心</title>  
</head>
<body style="background:#EBE9E5;">
<c:if test="${empty user}">
<!-- 
<script>alert('您还没有登录!');window.location.href="/user/userlogin.jsp";</script>
 -->
</c:if>
<div class="center-block"><!-- article -->
	<a href="userinformation?uid=${user.uid}" class="list-group-item">个人信息</a>
	<a href="myjob?currentIndex=0&uid=${user.uid}" class="list-group-item">我的兼职</a>
	<a href="userchangePage" class="list-group-item">修改信息</a>
	<a href="changepasswordPage" class="list-group-item">修改密码</a>
	<a href="#" class="list-group-item">我的评论</a>
	<a href="userloginOut" class="list-group-item">注销</a>  
</div><!-- article end -->
 </body>
</html>
