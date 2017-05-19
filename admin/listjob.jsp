<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
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
		location.href="/ListJobServlet?id=0&pNum="+pNum;
	}
</script>
</head>
<body>
<!-- 显示list数据 -->
<div><!-- begin article -->
  <c:if test="${not empty loginAdmin }">
	<div>  
		<c:if test="${empty page.jobs}">
			<h1>该页无任何数据！</h1>
		</c:if>
		<c:if test="${not empty page.jobs}">
			<ul class="list-group">
				<c:forEach items="${page.jobs}" var="job">
				<li class="list-group-item">
					<div class="row">
						<div class="col-xs-2">
							<img src="<%=request.getContextPath()%>${job.jurl }" onclick="location.href='/ShowJobServlet?jid=${job.jid}&id=0';" style="cursor: pointer;width:40px;"/>
						</div>
						<div class="col-xs-10">
							<div>
								<a href="/ShowJobServlet?jid=${job.jid}&id=0" style="color:#00B38A">${job.title }</a>
								<span class="badge">${job.jid }</span> 
							</div>
							<div>
								<a href="/ShowBusinessServlet?bid=${job.business.bid}" style="color:#00B38A">${job.business.bname}</a>
							</div>
							<div>
								<span>${job.salary }/小时</span>
								<c:if test="${job.state=='5'}">等待审核<a href="/AdminServlet?jid=${job.jid}&state=6&pNum=${page.pNum}">通过审核</a><a href="/AdminServlet?jid=${job.jid}&state=7&pNum=${page.pNum}">驳回修改</a></c:if>
								<c:if test="${job.state=='6'}">通过审核</c:if>
								<c:if test="${job.state=='7'}">驳回修改</c:if>
							</div>
						</div>
					</div>		
						<!--${job.jobtype }  -->
					</li>
				</c:forEach>
			</ul>
			
				<div>
					<span>
						<!-- 显示首页 -->
						<c:if test="${page.pNum == 1}">
							<span class="page page_first">首页 </span><span class="page page_up"> 上一页</span>
						</c:if>
						<c:if test="${page.pNum != 1}">
							<a href="/AListJobServlet?pNum=1" class="page page_first">首页</a>
							<a href="/AListJobServlet?pNum=${page.pNum-1 }" class="page page_up">上一页</a>
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
								<a href="/AListJobServlet?pNum=${i}" class="page">${i} </a>
							</c:if>	
						</c:forEach>
						<!-- 显示尾页 -->
						<c:if test="${page.pNum == page.totalPageNum}">
							<span class="page">下一页</span><span class="page page_last"> 尾页</span>
						</c:if>
						<c:if test="${page.pNum != page.totalPageNum}">
							<a href="/AListJobServlet?pNum=${page.pNum + 1 }" class="page">下一页</a>
							<a href="/AListJobServlet?&pNum=${page.totalPageNum}" class="page">尾页</a>
						</c:if>
						<input type="text" id="pNum" size="2" class="page"/><input type="button" value="go" onclick="jump();" class="page"/>
					</span>
				</div>
		</c:if>
	</div>
	</c:if>
</div><!-- end article -->
</body>
</html>