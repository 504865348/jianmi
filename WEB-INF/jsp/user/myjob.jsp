<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>我的兼职</title>
<script type="text/javascript">
	/* function jump(){
		// 获得用户输入页码
		var pNum = document.getElementById("pNum").value;
		location.href="/OrderServlet?pNum="+pNum;
	} */
</script>
</head>
<body style="background:#EBE9E5;">
<c:if test="${empty user}">
<!-- 
<script>alert('您还没有登录!');window.location.href="/user/userlogin.jsp";</script>
 -->
</c:if>
<div class="center-block"><!-- article -->
	<div class="margin-top-sm margin-bottom-lg">
  		<c:if test="${not empty user }">
		<!-- 显示订单列表信息  List -->
		<c:if test="${empty orders}">
		<h1 style="color:#8D8D8D;font-size:36px; text-align:center">没有您查询的兼职！</h1>
		</c:if>
		<c:if test="${not empty orders}">
		<c:forEach items="${orders}" var="order">
			<div class="panel">
				<div  class="panel-title"><!-- 兼职标题以及编号 -->
					<span>${order.oid}</span>
					<span><a href="/ShowJobServlet?jid=${order.job.jid }&id=1" target="_blank">${order.job.title}</a></span> 
				</div>
				<div class="panel-body"><!-- 公司以及状态 -->
					<div><span>公司：</span><a href="/ShowBusinessServlet?bid=${order.business.bid }" target="_blank">${order.business.bname}</a></div>
					<div>
						任务状态：
						<span style="color:#00B38A">
						<c:if test="${order.state=='0'}">申请中</c:if>
						<c:if test="${order.state=='1'}">商家已确认</c:if>
						<c:if test="${order.state=='2'}">任务完成</c:if>
						</span>
						
						<c:if test="${order.state=='4'}">商家拒绝了您的申请</c:if>
					</div>
					<div>
						
						<c:if test="${order.state=='3'}">任务失败
						
						</c:if>
					</div>
				</div>
			</div>
			</c:forEach>
			
			
		<!-- 分页 -->	
		<div class="wrap center-block margin-bottom-sm margin-top-sm">	
				<div class="row">
                                <nav>
                                    <ul class="pager">
                                        <li><a href="myjob?currentIndex=${currentIndex-3 }">上一页</a></li>

                                        <li><a href="myjob?currentIndex=${currentIndex+3 }">下一页</a></li>
                                    </ul>
                                </nav>
                 </div>				
		</div>		
		</c:if>
		</c:if>
		</div>
</div>
</body>
</html>