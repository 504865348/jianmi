<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vastsum.domain.Page"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	<link href="/css/user.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>
	<style>
	.span1>span{
			padding:20px 5px;
		}
	</style>
	<title>个人中心</title>  
</head>
<body style="background:#EBE9E5;">
<script type="text/javascript">
	function jump(){
		// 获得用户输入页码
		var pNum = document.getElementById("pNum").value;
		location.href="/ListJobServlet?id=1&pNum="+pNum;
	}
</script>
<jsp:include page="../master/u_top.jsp"/>
	 <c:if test="${not empty loginUser }">
	<!-- 显示list数据 -->
	<c:if test="${empty page.jobs}">
		<h1>该页无任何数据！</h1>
	</c:if>
	<c:if test="${not empty page.jobs}">
		<c:forEach items="${page.jobs}" var="job" >
	
	兼职编号 ${job.jid }<br/>
			<a href="/ShowJobServlet?jid=${job.jid}&id=1">兼职标题 ${job.title }</a>
			兼职分类 <img src="<%=request.getContextPath()%>${job.jurl }" onclick="location.href='/ShowJobServlet?jid=${job.jid}&id=1';" style="cursor: pointer;"/><br/>
			福利 ${job.salary }
			发布商家<a href="/ShowBusinessServlet?bid=${job.business.bid }">${job.business.bname}</a>
			
			<hr>
		</c:forEach>
			<tr>
				<td colspan="9" align="center">
					<!-- 显示首页 -->
					<c:if test="${page.pNum == 1}">
						首页  上一页
					</c:if>
					<c:if test="${page.pNum != 1}">
						<a href="/ListJobServlet?id=1&pNum=1">首页</a>
						<a href="/ListJobServlet?id=1&pNum=${page.pNum-1 }">上一页</a>
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
							${i}
						</c:if>
						<c:if test="${page.pNum!=i}">
							<a href="/ListJobServlet?id=1&pNum=${i}">${i} </a>
						</c:if>	
					</c:forEach>
					
					<!-- 显示尾页 -->
					<c:if test="${page.pNum == page.totalPageNum}">
						下一页 尾页
					</c:if>
					<c:if test="${page.pNum != page.totalPageNum}">
						<a href="/ListJobServlet?id=1&pNum=${page.pNum + 1 }">下一页</a>
						<a href="/ListJobServlet?id=1&pNum=${page.totalPageNum}">尾页</a>
					</c:if>
					<input type="text" id="pNum" size="2"/><input type="button" value="go" onclick="jump();"/>
				</td>
			</tr>
		</c:if>
	</c:if>
<jsp:include page="../master/u_foot.jsp"/>
</body>
</html>