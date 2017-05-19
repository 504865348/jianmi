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
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/user.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>
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
<c:if test="${empty loginUser}"><script>alert('您还没有登录!');window.location.href="/user/userlogin.jsp";</script></c:if>
<div class="center-block"><!-- article -->
	<div class="margin-top-sm margin-bottom-lg">
  		<c:if test="${not empty loginUser }">
		<!-- 显示订单列表信息  List -->
		<c:if test="${empty page.orders}">
		<h1 style="color:#8D8D8D;font-size:36px; text-align:center">没有您查询的兼职！</h1>
		</c:if>
		<c:if test="${not empty page.orders}">
		<c:forEach items="${page.orders}" var="order">
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
						<c:if test="${order.comment.state=='0'}">待评价</c:if>	
						<c:if test="${order.comment.state=='1'}">已评价</c:if>
						<c:if test="${order.state=='4'}">商家拒绝了您的申请</c:if>
					</div>
					<div>
						<c:if test="${order.state=='2'}">
						<c:if test="${order.comment.state=='0'}">
							<form action="/CommentServlet?id=1&cid=${order.comment.cid}&bid=${order.business.bid}&pNum=${page.pNum}"
								method="post">
									<input type="radio" name="choice" value="1">好评
									<input type="radio" name="choice" value="2">差评
									<textarea rows="2" cols="90" name="content"></textarea>
								<input type="submit" value="评价" class="btn btn-success">
							</form>
						</c:if>
						</c:if>
						<c:if test="${order.state=='3'}">任务失败
						<c:if test="${order.comment.state=='0'}">待评价
							<form action="/CommentServlet?id=1&cid=${order.comment.cid}&uid=${order.business.bid}&pNum=${page.pNum}"
									method="post">
										<input type="radio" name="choice" value="1">好评
											<input type="radio" name="choice" value="2">差评
										<textarea rows="2" cols="90" name="content"></textarea>
								<input type="submit" value="评价" class="btn btn-success">
							</form>
						</c:if>
						</c:if>
					</div>
				</div>
			</div>
			</c:forEach>
			
			
		<!-- 分页 -->	
		<div class="wrap center-block margin-bottom-sm margin-top-sm">	
				<c:if test="${page.pNum == 1}">
					<span class="page page_first">首页 </span><span class="page page_up"> 上一页</span>
				</c:if>
				<c:if test="${page.pNum != 1}">
					<a href="/OrderServlet?pNum=1" class="page page_first">首页</a>
					<a href="/OrderServlet?pNum=${page.pNum-1 }" class="page">上一页</a>
				</c:if>
				
				<!-- 当前页为中心前后各显示5页 -->
				<c:set var="begin" value="1" scope="page" />
				<c:set var="end" value="${page.totalPageNum}" scope="page" />
				
				<!-- 判断前面有没有5页 -->
				<c:if test="${page.pNum-5>0}">
					<c:set var="begin" value="${page.pNum-5}" scope="page" />
				</c:if>
				
				<!-- 判断后面有没有5页 -->
				<c:if test="${page.pNum+5 < page.totalPageNum}">
					<c:set var="end" value="${page.pNum + 5}" scope="page" />
				</c:if>
				
				<!-- 当前页不显示链接 -->
				<c:forEach begin="${begin}" end="${end}" var="i">
					<c:if test="${page.pNum==i}">
						<span class="page">${i}</span>
					</c:if>
					<c:if test="${page.pNum!=i}">
						<a href="/OrderServlet?pNum=${i}" class="page">${i} </a>
					</c:if>	
				</c:forEach>
				
				<!-- 显示尾页 -->
				<c:if test="${page.pNum == page.totalPageNum}">
					<span class="page">下一页</span><span class="page page_last"> 尾页</span>
				</c:if>
				<c:if test="${page.pNum != page.totalPageNum}">
					<a href="/OrderServlet?pNum=${page.pNum + 1 }" class="page">下一页</a>
					<a href="/OrderServlet?pNum=${page.totalPageNum}" class="page page_last">尾页</a>
				</c:if>
			</div>		
		</c:if>
		</c:if>
		</div>
</div>
</body>
</html>