<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="vastsum.domain.Page"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
<title>商家工作信息页</title>
<script type="text/javascript">
	function jump() {
		// 获得用户输入页码
		var pNum = document.getElementById("pNum").value;
		location.href = "/BJobServlet?pNum=" + pNum;
	}
</script>
</head>
<body>
	<c:if test="${empty loginBusiness}">
		<script>
			alert('您还没有登录!');
			window.location.href = "/business/businesslogin.jsp";
		</script>
	</c:if>
<div><!-- article -->
	<div>
		<c:if test="${not empty loginBusiness }">
		<!-- 显示list数据 -->
		<c:if test="${empty page.orders}">
			<h1>您还没有发布兼职！</h1>
		</c:if>
		<c:if test="${not empty page.orders}">
			<c:forEach items="${page.orders}" var="order">
			<div>
		 		<span>${order.oid}</span> 
		 		<a href="/ShowJobServlet?jid=${order.job.jid }&id=0">${order.job.title}</a> 
				<a href="/ShowUserServlet?uid=${order.user.uid }">${order.user.realname}</a>
				<c:if test="${order.state=='0'}">学生已申请
				<form action="/ConfirmServlet?oid=${order.oid}&state=1&pNum=${page.pNum}&lastnum=${order.job.lastnum}&personnum=${order.job.personnum}&jid=${order.job.jid}" method="post">
				<input type="submit" value="接受">${msg}
				</form>
				<form action="/ConfirmServlet?oid=${order.oid}&state=4&pNum=${page.pNum}" method="post">
				<input type="submit" value="拒绝">${msg}
				</form>
				</c:if>
				<c:if test="${order.state=='1'}">商家已确认，任务开始
				<form action="/ConfirmServlet?oid=${order.oid}&state=2&pNum=${page.pNum}&uid=${order.user.uid}" method="post">
				<input type="submit" value="确认任务完成">${msg}
				</form>
				<form action="/ConfirmServlet?oid=${order.oid}&state=3&pNum=${page.pNum}" method="post">
				<input type="submit" value="确认任务失败">${msg}
				</form>
				</c:if>
				<c:if test="${order.state=='2'}">任务完成
		<c:if test="${order.comment.state=='0'}">待评价
		<form action="/CommentServlet?id=0&cid=${order.comment.cid}&uid=${order.user.uid}&pNum=${page.pNum}"
							method="post">
							<input type="radio" name="choice" value="1">好评
								<input type="radio" name="choice" value="2">差评
								<textarea rows="2" cols="90" name="content"></textarea>
							<input type="submit" value="评价" class="btn btn-success">
						</form>
					</c:if>
					<c:if test="${order.comment.state=='1'}">已评价</c:if>
				</c:if>

				<c:if test="${order.state=='3'}">任务失败
					<c:if test="${order.comment.state=='0'}">待评价
		<form action="/CommentServlet?id=0&cid=${order.comment.cid}&uid=${order.user.uid}&pNum=${page.pNum}"
							method="post">
							<input type="radio" name="choice" value="1">好评
								<input type="radio" name="choice" value="2">差评
								<textarea rows="2" cols="90" name="content"></textarea>
							<input type="submit" value="评价" class="btn btn-success">
						</form>
					</c:if>
					<c:if test="${order.comment.state=='1'}">已评价</c:if>
				</c:if>
				<c:if test="${order.state=='4'}">商家拒绝了学生的申请</c:if>
	</div>	
</c:forEach>

		<div><!-- 分页 -->
					<!-- 显示首页 --> <c:if test="${page.pNum == 1}">
					<span class="page page_first">首页 </span><span class="page page_up"> 上一页</span>
				</c:if> <c:if test="${page.pNum != 1}">
						<a href="/BJobServlet?pNum=1" class="page page_first">首页</a>
						<a href="/BJobServlet?pNum=${page.pNum-1 }" class="page">上一页</a>
					</c:if> <!-- 当前页为中心前后各显示5页 --> <c:set var="begin" value="1" scope="page" />
					<c:set var="end" value="${page.totalPageNum}" scope="page" /> <!-- 判断前面有没有5页 -->
					<c:if test="${page.pNum-5>0}">
						<c:set var="begin" value="${page.pNum-5}" scope="page" />
					</c:if> <!-- 判断后面有没有5页 --> <c:if test="${page.pNum+5 < page.totalPageNum}">
						<c:set var="end" value="${page.pNum + 5}" scope="page" />
					</c:if> <!-- 当前页不显示链接 --> <c:forEach begin="${begin}" end="${end}" var="i">
						<c:if test="${page.pNum==i}">
						<span class="page">${i}</span>
					</c:if>
						<c:if test="${page.pNum!=i}">
							<a href="/BJobServlet?pNum=${i}" class="page">${i} </a>
						</c:if>
					</c:forEach> <!-- 显示尾页 --> <c:if test="${page.pNum == page.totalPageNum}">
					<span class="page">下一页</span><span class="page page_last"> 尾页</span>
				</c:if> <c:if test="${page.pNum != page.totalPageNum}">
						<a href="/BJobServlet?pNum=${page.pNum + 1 }" class="page">下一页</a>
						<a href="/BJobServlet?pNum=${page.totalPageNum}" class="page_last">尾页</a>
					</c:if> <input type="text" id="pNum" size="2" class="page"/>
					<input type="button" value="go" onclick="jump();" class="btn btn-success" />
		</div><!-- 分页 end -->
		
		</c:if>
	</c:if>
	</div><!-- pullRight end -->
</div>
</body>
</html>