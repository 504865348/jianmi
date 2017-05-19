<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
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
<title>兼职详情</title>
</head>
<body>
<div class="width-12 bg-main" style="height:36px;color:#fff">兼米网--一家靠谱的兼职平台</div>
<c:if test="${empty user }">
	<div class="margin-top-lg"><h5 class="text-center">查看兼职详情！请先登陆!</h5></div>
	<div><a href="userloginPage" class="btn btn-success width-12" style="color:#fff">登录</a></div>	
	<div class="margin-top-lg"><h5 class="text-center">商家暂时无法查看兼职详情！</h5></div>
</c:if>
<c:if test="${not empty user }">
<!-- 显示 javabean对象信息 -->
<c:if test="${empty job}">
	<h2>您查询兼职不存在！</h2>
</c:if>
<c:if test="${not empty job}">
	<div class="center-block">
		<div class="list-group">
			<div class="list-group-item">
			<img src="<%=request.getContextPath()%>${job.jurl}" style="width:40px;height:40px;display:block;" class="center-block">
			<div class="list-group-item"><span>工资：${job.salary}/小时</span></div>
			<div class="list-group-item"><span>工作发布时间：${job.pubtime}</span></div>
			<div class="list-group-item"><span>报名截止：${job.endtime}</span></div>
			<div class="list-group-item"><span>工作时间：${job.worktime}</span></div>
			<div class="list-group-item"><span>性别要求：${job.gender}</span></div>
			<div class="list-group-item"><span>工作地点：${job.workplace}</span></div>
			<div class="list-group-item"><span>兼职内容：</span><span>${job.content}</span></div>
			<div class="list-group-item"><span>任职要求：</span><span>${job.ask}</span></div>
			<div class="list-group-item"><span>面试时间：${job.interviewtime}</span></div>
			<div class="list-group-item"><span>培训时间：${job.traintime}</span></div>
			<div class="list-group-item"><span>参与人数：${job.lastnum}/${job.personnum}</span></div>
			<div class="list-group-item"><span>商家</span><a href="/ShowBusinessServlet?bid=${job.business.bid }">${job.business.bname}</a></div>
			<div class="list-group-item"><span class="text-danger">报名之后请及时打电话联系商家,并说明兼职信息来自兼米网!!!</span></div>
			<div class="list-group-item"><span>兼米网提醒：工作期间请您注意人身和财产安全，凡是提出收取任何费用（会员费，进场费，体验费，服装押金，保证金等），绝对不能交，及时联系客服或者举报！举报电话：17788352850。</span></div>
			<div class="list-group-item">
				<input type="button" value="申请报名" class="width-12 btn bg-main"
			 		onclick="location.href='joinjob?jid=${job.jid}&bid=${job.businessid }&lastnum=${job.lastnum}&personnum=${job.personnum}';"/>
			</div>
			</div>
		</div>
	</div>
	</c:if>
</c:if>
</body>
</html>