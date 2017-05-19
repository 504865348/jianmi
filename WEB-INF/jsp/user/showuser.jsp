<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
	<meta charset="UTF-8">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/user.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>
	<style type="text/css">
		.span1>span{
			padding:20px 5px;
		}
	</style>
    <title>个人信息</title>
  </head>
  <body>
  <c:if test="${empty loginUser}"><script>alert('您还没有登录!');window.location.href="/user/userlogin.jsp";</script></c:if>
  <c:if test="${not empty loginUser }">
  <div><!-- header -->
  <div class="panel" style="font-size:16px;width:100%;">
  	<span class="width-4" style="display:inline-block;padding:10px;">
  		<span class="glyphicon glyphicon-tag"></span><span>兼职次数：</span><span>${loginUser.worknum}</span>
  	</span>
  	<span class="width-4" style="display:inline-block;padding:10px;">
  		<span class="glyphicon glyphicon-heart"></span><span>好评数：</span><span><a href="/ListCommentServlet?id=1&pNum=1&uid=${loginUser.uid}">${loginUser.goodas}</a></span>
  	</span>
  	<span class="width-3" style="display:inline-block;padding:10px;">
  		<span class="fa fa-heartbeat"></span><span>差评数：</span><span><a href="/ListCommentServlet?id=1&pNum=1&uid=${loginUser.uid}">${loginUser.badas}</a></span>
  	</span>
  </div>
  <div class="panel" style="font-size:16px;width:100%;">
  	<span style="display:inline-block;padding:10px;width:100%;">
  		<span class="width-6" style="display:inline-block;">
  			<span class="fa fa-dot-circle-o"></span>
	  		<span>真实姓名：</span><span>${loginUser.realname}</span>
	  	</span>
	  	<span class="width-5">
	  		<span class="glyphicon glyphicon-phone"></span>
	  		<span>手机号码：</span><span>${loginUser.username}</span>
	  	</span>
  	</span>
  </div>
  <div class="panel span1" style="font-size:16px;width:100%;">
  	<span class="width-6" style="display:inline-block;">
	  	<span>性别：</span>
	  	<span>${loginUser.gender}</span>
  	</span>
  	<span class="width-5" style="display:inline-block;">
	  	<span>城市：</span>
	  	<span>${loginUser.city}</span>
  	</span>
  	<span class="width-6" style="display:inline-block;">
	  	<span>地区：</span>
	  	<span>${loginUser.area}</span>
  	</span>
  	<span class="width-5" style="display:inline-block;">
	  	<span>学校：</span>
	  	<span>${loginUser.school}</span>
  	</span>
  	<span class="width-6" style="display:inline-block;">
	  	<span>学院：</span>
	  	<span>${loginUser.college}</span>
  	</span>
  	<span class="width-5" style="display:inline-block;">
	  	<span>入学年份：</span>
	  	<span>${loginUser.intoyear}</span>
  	</span>
  	
  	<span class="width-6" style="display:inline-block">
	  	<span>注册时间：</span>
	  	<span>${loginUser.registtime}</span>
  	</span>
  	<span class="width-5" style="display:inline-block;">
	  	<span>个人邮箱：</span>
	  	<span>${loginUser.email}</span>
  	</span>
  	
  	<span class="width-12" style="display:inline-block;">
	  	<span>个人介绍：</span>
	  	<span>${loginUser.introduction}</span>
  	</span>
  	
  </div>
</div><!-- end header -->
</c:if>
  </body>
</html>