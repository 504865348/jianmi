<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vastsum.domain.Page"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<title>商家兼职列表</title>   
	<script type="text/javascript">
		function jump(){
			// 获得用户输入页码
			var pNum = document.getElementById("pNum").value;
			location.href="/ListJobServlet?id=2&pNum="+pNum;
		}
	</script>
</head>
<body>
<c:if test="${empty loginBusiness}"><script>alert('您还没有登录!');window.location.href="/business/businesslogin.jsp";</script></c:if>
<div><!-- article -->
	<div>
	<c:if test="${not empty loginBusiness }">
		<c:if test="${empty page.jobs}">
		<h1>该页无任何数据！</h1>	<!-- 显示list数据 -->
	</c:if>
	<c:if test="${not empty page.jobs}">
	
	<c:forEach items="${page.jobs}" var="job">
		<div class="row">
		<div class="col-xs-3"><img src="<%=request.getContextPath()%>${job.jurl }" onclick="location.href='/ShowJobServlet?jid=${job.jid}&id=0';" style="cursor: pointer; width:40px;" class="responsive"/></div>
		<div class="col-xs-9">
			<div class="row">
				<div class="row">
					<a href="/ShowJobServlet?jid=${job.jid}&id=0" class="col-xs-12"> ${job.title }</a>
				</div>
				<div class="row">
					<div class="col-xs-5"><span>${job.salary }元/小时</span></div>
					<div class="col-xs-5">
						<span><c:if test="${job.state=='5'}">等待审核</c:if></span>
						<span><c:if test="${job.state=='6'}">通过审核</c:if></span>
						<span><c:if test="${job.state=='7'}">未通过审核</c:if></span>
					</div>
					<div class="col-xs-2"><span class="badge">${job.jid}</span></div>
				</div>
			</div>
		</div><!-- end class="col-xs-9" -->
		</div><!-- end class="row" -->
		<hr/>
	</c:forEach>
	
		<div><!-- page -->
				<!-- 显示首页 -->
				<c:if test="${page.pNum == 1}">
					<span class="page page_first">首页 </span><span class="page page_up"> 上一页</span>
				</c:if>
				<c:if test="${page.pNum != 1}">
					<a href="/ListJobServlet?id=2&pNum=1" class="page page_first">首页</a>
					<a href="/ListJobServlet?id=2&pNum=${page.pNum-1 }" class="page">上一页</a>
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
						<a href="/ListJobServlet?id=2&pNum=${i}" class="page">${i} </a>
					</c:if>	
				</c:forEach>
				
				<!-- 显示尾页 -->
				<c:if test="${page.pNum == page.totalPageNum}">
					<span class="page">下一页</span><span class="page page_last"> 尾页</span>
				</c:if>
				<c:if test="${page.pNum != page.totalPageNum}">
					<a href="/ListJobServlet?id=2&pNum=${page.pNum + 1 }" class="page">下一页</a>
					<a href="/ListJobServlet?id=2&pNum=${page.totalPageNum}" class="page last_page">尾页</a>
				</c:if>
				<input type="text" id="pNum" size="2" class="page"/><input type="button" value="go" onclick="jump();" class="btn btn-success"/>
		</div><!-- page end -->				
	</c:if>
</c:if>
	</div>
</div>
</body>
</html>