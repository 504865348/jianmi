<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//Dspan HTML 4.01 divansitional//EN" "http://www.w3.org/div/html4/loose.dspan">
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
<title>显示商家</title>
<script type="text/javascript">
	function jump(){
		// 获得用户输入页码
		var pNum = document.getElementById("pNum").value;
		location.href="/ListBusinessServlet?pNum="+pNum;
	}
</script>
</head>
<body>
 <c:if test="${not empty loginAdmin }">
 <div><!-- article begin -->
	<div>
		<c:if test="${empty page.businesses}">
		还没有商户！
		</c:if>
		<c:if test="${not empty page.businesses}">
			<!-- 用分隔线分隔 -->
			<div class="list-group">
				<c:forEach items="${page.businesses}" var="business">
					<a href="/ShowBusinessServlet?bid=${business.bid }" class="badge"> ${business.bid }</a>
					<span style="color:#00B38A">${business.bname }</span>
					状态
					<c:if test="${business.state=='3'}">封号中&nbsp<a href="/AdminServlet?bid=${business.bid}&state=4&pNum=${page.pNum}">解封</a></c:if>
					<c:if test="${business.state=='4'}">正常&nbsp<a href="/AdminServlet?bid=${business.bid}&state=3&pNum=${page.pNum}">封号</a></c:if>
				</c:forEach>
			</div>
				<div>
					<span>
						<!-- 显示首页 -->
						<c:if test="${page.pNum == 1}">
							<span class="page page_first">首页 </span><span class="page page_up"> 上一页</span>
						</c:if>
						<c:if test="${page.pNum != 1}">
							<a href="/ListBusinessServlet?pNum=1" class="page page_first">首页</a>
							<a href="/ListBusinessServlet?pNum=${page.pNum-1 }" class="page page_up">上一页</a>
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
								<a href="/ListBusinessrServlet?pNum=${i}" class="page">${i} </a>
							</c:if>	
						</c:forEach>
						
						<!-- 显示尾页 -->
						<c:if test="${page.pNum == page.totalPageNum}">
							<span class="page">下一页</span><span class="page page_last"> 尾页</span>
						</c:if>
						<c:if test="${page.pNum != page.totalPageNum}">
							<a href="/ListBusinessServlet?pNum=${page.pNum + 1 }" class="page">下一页</a>
							<a href="/ListBusinessServlet?pNum=${page.totalPageNum}" class="page page_last">尾页</a>
						</c:if>
						<input type="text" id="pNum" size="2" class="page"/><input type="button" value="go" onclick="jump();" class="page page_last"/>
					</span>
				</div>
		</c:if>
	</div>
</div><!-- article -->
</c:if>
</body>
</html>