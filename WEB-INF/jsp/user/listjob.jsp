<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="UTF-8">
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
	<style>
	.span1>span{
			padding:20px 5px;
		}
	</style>
	<title>个人中心</title>  
</head>
<body style="background:#EBE9E5;">
<script type="text/javascript">
	
</script>
<jsp:include page="../master/u_top.jsp"/>
	 <c:if test="${not empty user }">
	<!-- 显示list数据 -->
	<c:if test="${empty jobs}">
		<h1>该页无任何数据！</h1>
	</c:if>
	<c:if test="${not empty jobs}">
		<c:forEach items="${jobs}" var="job" >
	
	兼职编号 ${job.jid }<br/>
			<a href="udetailjob?jid=${job.jid}&id=1">兼职标题 ${job.title }</a>
			兼职分类 <img src="<%=request.getContextPath()%>${job.jurl }" onclick="location.href='/ShowJobServlet?jid=${job.jid}&id=1';" style="cursor: pointer;"/><br/>
			福利 ${job.salary }
			发布商家<a href="/ShowBusinessServlet?bid=${job.business.bid }">${job.business.bname}</a>
			
			<hr>
		</c:forEach>
			
			
			
		</c:if>
		<!-- 分页 -->	
		<div class="wrap center-block margin-bottom-sm margin-top-sm">	
				<div class="row">
                                <nav>
                                    <ul class="pager">
                                        <li><a href="listjob?currentIndex=${currentIndex-10 }&jianGe=10">上一页</a></li>

                                        <li><a href="listjob?currentIndex=${currentIndex+10 }&jianGe=10">下一页</a></li>
                                    </ul>
                                </nav>
                 </div>				
		</div>		
		
	</c:if>
<jsp:include page="../master/u_foot.jsp"/>
</body>
</html>