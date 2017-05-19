<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="Keywords" content="">
<meta name="Description" content="">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="css/jz.css" rel="stylesheet">
	<link href="css/business.css" rel="stylesheet">
	<link href="images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>	
<title>个人中心</title>
<script type="text/javascript">
	/* function jump() {
		// 获得用户输入页码
		var pNum = document.getElementById("pNum").value;
		location.href = "/BJobServlet?pNum=" + pNum;
	} */
</script>
</head>
<body>
	<c:if test="${empty business}">
		<!-- <script>
			alert('您还没有登录!');
			window.location.href = "/business/businesslogin.jsp";
		</script> -->
	</c:if>
	
<jsp:include page="../master/b_top.jsp"/>
<div class="wrap center-block"><!-- article -->
	<div class="list-group width-2 pull-left">
		<jsp:include page="../master/b_navside.jsp"/>
	</div>
	<div class="width-10 pull-right" style="background:#fff;">
			<c:if test="${not empty business }">
		<!-- 显示list数据 -->
		<c:if test="${empty orders}">
			<h1>您还没有发布兼职！</h1>
		</c:if>
		<c:if test="${not empty orders}">
			<c:forEach items="${orders}" var="order">
			<div class="ji_info1">
		 		<span>${order.oid}</span> 
		 		<a href="/ShowJobServlet?jid=${order.job.jid }&id=0">${order.job.title}</a> 
				<a href="/ShowUserServlet?uid=${order.user.uid }">${order.user.realname}</a>
				<c:if test="${order.state=='0'}">学生已申请
				<form action="busJieShouBB?oid=${order.oid}&state=1&currentIndex=${page.currentIndex}&lastnum=${order.job.lastnum}&personnum=${order.job.personnum}&jid=${order.job.jid}" method="post">
				<input type="submit" value="接受">${msg}
				</form>
				<form action="busJieShouBB?oid=${order.oid}&state=4&currentIndex=${page.currentIndex}" method="post">
				<input type="submit" value="拒绝">${msg}
				</form>
				</c:if>
				<c:if test="${order.state=='1'}">商家已确认，任务开始
				<form action="busJieShouBB?oid=${order.oid}&state=2&currentIndex=${page.currentIndex}&uid=${order.user.uid}" method="post">
				<input type="submit" value="确认任务完成">${msg}
				
				</form>
				<form action="busJieShouBB?oid=${order.oid}&state=3&currentIndex=${page.currentIndex}" method="post">
				<input type="submit" value="确认任务失败">${msg}
				</form>
				</c:if>
				<c:if test="${order.state=='2'}">任务完成
		          
					<%-- <c:forEach items="${order.comments }" var="comment">
					  ${comment.uid}
					 <c:if test="${comment.state=='0'}">待评价
		               <form action="busCommentBB?cid=${comment.cid}&uid=${order.user.uid}&currentIndex=${page.currentIndex}"
							method="post">
							<input type="radio" name="choice" value="1">好评
								<input type="radio" name="choice" value="2">差评
								<textarea rows="2" cols="90" name="content"></textarea>
							<input type="submit" value="评价" class="btn btn-success">
						</form>
					</c:if>
					<c:if test="${comment.state=='1'}">已评价</c:if> 
					
				    </c:forEach> --%>
				</c:if>

				<c:if test="${order.state=='3'}">任务失败
					<%-- <c:forEach items="${order.comments }" var="comment">
					  ${comment.uid}
					 <c:if test="${comment.state=='0'}">待评价
		               <form action="busCommentBB?cid=${comment.cid}&uid=${order.user.uid}&currentIndex=${page.currentIndex}"
							method="post">
							<input type="radio" name="choice" value="1">好评
								<input type="radio" name="choice" value="2">差评
								<textarea rows="2" cols="90" name="content"></textarea>
							<input type="submit" value="评价" class="btn btn-success">
						</form>
					</c:if>
					<c:if test="${comment.state=='1'}">已评价</c:if> 
					
				    </c:forEach> --%>
				</c:if>
				<c:if test="${order.state=='4'}">商家拒绝了学生的申请</c:if>
	</div>	
</c:forEach>
		
		<div class="row">
                                <nav>
                                    <ul class="pager">
                                       
                                        <li><a href="jobinformationBB?currentIndex=${page.currentIndex-3 }&&bid=1">上一页</a></li>

                                        <li><a href="jobinformationBB?currentIndex=${page.currentIndex+3 }&&bid=1">下一页</a></li>
                                    </ul>
                                </nav>
                      </div>
		</c:if>
	</c:if>
	</div><!-- pullRight end -->
	
	<div class="clearfix"></div>
</div>
<jsp:include page="../master/b_foot.jsp"/>

</body>
</html>