<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
   	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="../css/jz.css" rel="stylesheet">
	<link href="../css/admin.css" rel="stylesheet">
	<link href="../images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="../bootstrap/js/jquery.js"></script>
	<script src="../bootstrap/js/bootstrap.js"></script>
    <title>管理员界面</title>
<script type="text/javascript">
	function jump(){
		// 获得用户输入页码
		var pNum = document.getElementById("pNum").value;
		location.href="/AdminOrderServlet?pNum="+pNum;
	}
</script>
</head>
<body>
<!-- 显示list数据 -->
  <c:if test="${not empty loginAdmin }">
 <div><!-- begin article -->
	<c:if test="${empty page.orders}">
	<h1>还没有任务！</h1>
	</c:if>
<c:if test="${not empty page.orders}">
	<div class="list-group">
		<c:forEach items="${page.orders}" var="order">
			<div class="list-group-item">
					<span class="badge"> ${order.oid}</span>
				 <div><a href="/ShowUserServlet?uid=${order.user.uid } "style="color:#00B38A">${order.user.username} </a></div>
				  <div>兼职标题：<a href="/ShowJobServlet?jid=${order.job.jid }&id=0">${order.job.title}</a> </div>
				  <div>发布商家：<a href="/ShowBusinessServlet?bid=${order.business.bid }">${order.business.bname}</a></div>
				 <div>任务状态：
					<c:if test="${order.state=='0'}">申请时间:${order.applytime} 学生申请中，等待商家确认</c:if>
					<c:if test="${order.state=='1'}">商家已确认，任务开始</c:if>
					<c:if test="${order.state=='2'}">任务完成</c:if>
					<c:if test="${order.state=='3'}">任务失败</c:if>
					<c:if test="${order.state=='4'}">商家拒绝了学生的申请</c:if>
				 </div>
			</div>
		</c:forEach>
		</div>		
		<div>
			<span>
				<!-- 显示首页 -->
				<c:if test="${page.pNum == 1}">
					<span class="page page_first">首页 </span><span class="page page_up"> 上一页</span>
				</c:if>
				<c:if test="${page.pNum != 1}">
					<a href="/ListUserServlet?pNum=1">首页</a>
					<a href="/ListUserServlet?pNum=${page.pNum-1 }">上一页</a>
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
						<a href="/ListUserServlet?pNum=${i}" class="page">${i} </a>
					</c:if>	
				</c:forEach>
				
				<!-- 显示尾页 -->
				<c:if test="${page.pNum == page.totalPageNum}">
					<span class="page">下一页</span><span class="page page_last"> 尾页</span>
				</c:if>
				<c:if test="${page.pNum != page.totalPageNum}">
					<a href="/ListUserServlet?pNum=${page.pNum + 1 }" class="page">下一页</a>
					<a href="/ListUserServlet?pNum=${page.totalPageNum}" class="page">尾页</a>
				</c:if>
				<input type="text" id="pNum" size="2" class="page"/><input type="button" value="go" onclick="jump();" class="page"/>
			</span>
		</div>
	</c:if>
	</div><!-- end article -->
</c:if>

</body>
</html>