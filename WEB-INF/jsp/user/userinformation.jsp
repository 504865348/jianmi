<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<c:if test="${empty loginUser}">
<!-- 
<script>alert('您还没有登录!');window.location.href="/user/userlogin.jsp";</script>

 -->
</c:if>
	<div class="center-block">
		<!-- article -->
		<div class="margin-top-lg">
			<div class="panel"><!-- 评价模块 -->
				<ul class="list-group">
					<li class="list-group-item">
						<c:set var="a" value="${loginUser.worknum}" /> <c:set var="b"
							value="2" /> <fmt:formatNumber var="c" value="${a / b}"
							pattern="#" /> 
							<span class="glyphicon glyphicon-tag"></span><span>兼职次数：</span><span>${c}</span>
					</li>
					 <li class="list-group-item">
						<span class="glyphicon glyphicon-heart"></span><span>好评数：</span><span><a
							href="/ListCommentServlet?id=1&pNum=1&uid=${loginUser.uid}">${loginUser.goodas}</a>
						</span>
					 </li> 
					 <li class="list-group-item">
						<span class="fa fa-heartbeat"></span><span>差评数：</span><span><a
							href="/ListCommentServlet?id=1&pNum=1&uid=${loginUser.uid}">${loginUser.badas}</a>
						</span>
					 </li>
				 </ul>
			</div>
			<div class="panel">
				<ul class="list-group">
					<li class="list-group-item"> 
						<span class="fa fa-dot-circle-o"></span> <span>真实姓名：</span><span>${loginUser.realname}</span>
					</li> 
					<li class="list-group-item"> 
						<span class="glyphicon glyphicon-phone"></span> <span>手机号码：</span><span>${loginUser.username}</span>
					</li> 
				</ul>
			</div>
			<div class="panel">
				<ul class="list-group">
					<li class="list-group-item">
						 <span>性别：</span> <span>${loginUser.gender}</span> 
					</li> 
					<li class="list-group-item"> 
						<span>城市：</span> <span>${loginUser.city}</span>
					</li> 
					<li class="list-group-item"> 
						<span>地区：</span> <span>${loginUser.area}</span>
					</li> 
					<li class="list-group-item"> 
						<span>学校：</span> <span>${loginUser.school}</span>
					</li> 
					<li class="list-group-item">
						 <span>学院：</span> <span>${loginUser.college}</span> 
					</li> 
					<li class="list-group-item"> 
						<span>入学年份：</span> <span>${loginUser.intoyear}</span>
					</li>
					 <li class="list-group-item">
					 	<span>注册时间：</span><span>${loginUser.registtime}</span>
					</li> 
					<li class="list-group-item"> 
						 	<span>个人邮箱：</span> <span>${loginUser.email}</span>
					</li> 
					<li class="list-group-item">
					 	<span>个人介绍：</span> <span>${loginUser.introduction}</span> 
					 </li>
				</ul>
			</div>
			<div class="margin-bottom-lg">
				<input type="button" value="修改资料" class="btn btn-success width-12"
					onclick="location.href='/user/userchange.jsp';" />
			</div>
		</div>
	</div>
	<!-- article end -->
</body>
</html>
