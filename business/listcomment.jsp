<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vastsum.domain.Page"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
<title>商家评价</title>
<script type="text/javascript">
	function jump(){
		// 获得用户输入页码
		var pNum = document.getElementById("pNum").value;
		location.href="/ListCommentServlet?id=2&pNum="+pNum;
	}
</script>
</head>
<body>
<c:if test="${empty loginBusiness}"><script>alert('您还没有登录!');window.location.href="/business/businesslogin.jsp";</script></c:if>
<div><!-- article -->
	<div>
	<c:if test="${not empty loginBusiness }">
	<!-- 显示list数据 -->
	<c:if test="${empty page.comments}">
	<h4 class="center-block">你还没有发表任何评论</h4>
	</c:if>
	<c:if test="${not empty page.comments}">
	
	<c:forEach items="${page.comments}" var="comment" >
	评论用户：<a href="/ShowUserServlet?uid=${comment.user.uid }">${comment.user.realname}</a><br>
	评论内容：${comment.content}<br>
	评论时间：${comment.time }
	<hr/>
	</c:forEach>
	
				<c:if test="${page.pNum == 1}">
					<span class="page page_first">首页 </span><span class="page page_up"> 上一页</span>
				</c:if>
				<c:if test="${page.pNum != 1}">
					<a href="/ListCommentServlet?id=2&pNum=1" class="page first_page">首页</a>
					<a href="/ListCommentServlet?id=2&pNum=${page.pNum-1 }" class="page">上一页</a>
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
						<a href="/ListCommentServlet?id=1&pNum=${i}" class="page">${i} </a>
					</c:if>	
				</c:forEach>
				
				<!-- 显示尾页 -->
				<c:if test="${page.pNum == page.totalPageNum}">
					<span class="page">下一页</span><span class="page page_last"> 尾页</span>
				</c:if>
				<c:if test="${page.pNum != page.totalPageNum}">
					<a href="/ListCommentServlet?id=2&pNum=${page.pNum + 1 }">下一页</a>
					<a href="/ListCommentServlet?id=2&pNum=${page.totalPageNum}">尾页</a>
				</c:if>
				<input type="text" id="pNum" size="2" class="page"/><input type="button" value="go" onclick="jump();" class="btn btn-success"/>
	</c:if>
</c:if>
	</div>
</div>
</body>
</html>