<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML>
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
	<title>商家兼职列表</title>   
	<script type="text/javascript">
		/* function jump(){
			// 获得用户输入页码
			var pNum = document.getElementById("pNum").value;
			location.href="/ListJobServlet?id=2&pNum="+pNum;
		} */
	</script>
	<style type="text/css">
	    
	     .lj_span1 {
	      margin-bottom: 10px
	     }
	</style>
</head>
<body>
<%-- <c:if test="${empty business}">
<script>alert('您还没有登录!');window.location.href="/business/businesslogin.jsp";</script>
</c:if> --%>

<jsp:include page="../master/b_top.jsp"/>
<div class="wrap center-block"><!-- article -->
	<div class="list-group width-2 pull-left">
		<jsp:include page="../master/b_navside.jsp"/>
	</div>
	<div class="width-10 pull-right" style="background:#fff;">
	<c:if test="${not empty business }">
		<c:if test="${empty jobs}">
		<h1>该页无任何数据！</h1>	<!-- 显示list数据 -->
	</c:if>
	<c:if test="${not empty jobs}">
	<c:forEach items="${jobs}" var="job">
		<div class="lj_info">
			<div class="lj_span2">
				<span>${job.jid}</span>
				<a href="/ShowJobServlet?jid=${job.jid}&id=0" style="width:700px;"> ${job.title }</a>
				<span style="width:300px; margin-top:20px;">工资 ${job.salary }</span>
				<span style="width:150px; margin-top:20px;"><c:if test="${job.state=='5'}">等待审核</c:if></span>
				<span style="width:150px; margin-top:20px;"><c:if test="${job.state=='6'}">通过审核</c:if></span>
				<span style="width:150px; margin-top:20px;"><c:if test="${job.state=='7'}">未通过审核</c:if></span>
			</div>
			<div class="lj_span1"><img   class="im" src="<%=request.getContextPath()%>${job.jurl }" onclick="location.href='/ShowJobServlet?jid=${job.jid}&id=0';" style="cursor: pointer;"/></div>
			<div class="clearfix"></div>
		</div>
	</c:forEach>
		<div style="margin-top:10px; margin-bottom:10px;"><!-- page -->
				<!-- 显示首页 -->
				<c:if test="${page.currentIndex == 0}">
					<span class="page page_first">首页 </span><span class="page page_up"> 上一页</span>
				</c:if>
				<c:if test="${page.currentIndex != 0}">
					<a href="listjobBB?currentIndex=0&&jianGe=3" class="page page_first">首页</a>
					<a href="listjobBB?currentIndex=${page.currentIndex-page.jianGe}&&jianGe=3" class="page">上一页</a>
				</c:if>
				
				<%-- <!-- 当前页为中心前后各显示5页 -->
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
		 --%>		
				<!-- 显示尾页 -->
				<c:if test="${(page.row-page.currentIndex)<=page.jianGe}">
					<span class="page">下一页</span><span class="page page_last"> 尾页</span>
				</c:if>
				<c:if test="${(page.row-page.currentIndex)>page.jianGe}">
					<a href="listjobBB?currentIndex=${page.currentIndex+page.jianGe}&&jianGe=3" class="page">下一页</a>
					<a href="listjobBB?currentIndex=${page.lastIndex}&&jianGe=3" class="page last_page">尾页</a>
				</c:if>
				<!-- 
				<input type="text" id="pNum" size="2" class="page"/><input type="button" value="go" onclick="jump();" class="btn btn-success"/>
		 -->
		</div><!-- page end -->				
	</c:if>
</c:if>
	</div>
	<div class="clearfix"></div>
</div>
<jsp:include page="../master/b_foot.jsp"/>
</body>
</html>