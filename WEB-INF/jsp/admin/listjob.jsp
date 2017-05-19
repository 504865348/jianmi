<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Keywords"
	content="兼米网 江苏大学兼米网   镇江兼米网  镇江江苏大学兼米网  镇江兼职平台  江苏大学兼职平台">
<meta name="Description"
	content="兼米网是镇江本地的一个兼职网站，为大学生提供真实可靠的兼职信息。丰富大学生生活，让大学生做兼职更有安全感。">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
<link href="css/jz.css" rel="stylesheet">
<link href="css/admin.css" rel="stylesheet">
<link href="images/jzme.ico" rel="shortcut icon" type="image/x-icon" />
<script src="bootstrap/js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<title>管理员界面</title>
<script type="text/javascript">
	/* function jump(){
		// 获得用户输入页码
		var pNum = document.getElementById("pNum").value;
		location.href="/ListJobServlet?id=0&pNum="+pNum;
	} */
    </script>
</head>
<body>
	<!-- 显示list数据 -->
	<div>
		<jsp:include page="../master/a_top.jsp" />
	</div>
	<!-- end top -->
	<div class="container">
		<c:if test="${not  empty admin }">
			<div class="col-lg-2">
				<jsp:include page="../master/a_navside.jsp"></jsp:include>
			</div>
			<div class="col-lg-10">
				<c:if test="${empty jobs}">
					<h1>该页无任何数据！</h1>
				</c:if>
				<c:if test="${not empty jobs}">
					<div class="list-group">
						<c:forEach items="${jobs}" var="job">
							<div class="list-group-item">
								<div class="row">
									<div class="col-lg-2">
										<img src="<%=request.getContextPath()%>${job.jurl }"
											onclick="location.href='/ShowJobServlet?jid=${job.jid}&id=0';"
											style="cursor: pointer;" />
									</div>
									<div class="col-lg-6">
										<div class="row margin-top-lg">
											<a href="/ShowJobServlet?jid=${job.jid}&id=0"
												style="color: #00B38A"> ${job.title }</a>
										</div>
										<div class="row margin-top-lg">
											发布商家<a href="/ShowBusinessServlet?bid=${job.business.bid}"
												style="color: #00B38A">${job.business.bname}</a>
										</div>
									</div>
									<div class="col-lg-2">
										<c:if test="${job.state=='5'}">等待审核<a
												href="updateState?jid=${job.jid}&state=6&currentIndex=${page.currentIndex }&jianGe=${page.jianGe}">通过审核</a>
											<a
												href="updateState?jid=${job.jid}&state=7&currentIndex=${page.currentIndex }&jianGe=${page.jianGe}">驳回修改</a>
										</c:if>
										<c:if test="${job.state=='6'}">通过审核</c:if>
										<c:if test="${job.state=='7'}">驳回修改</c:if>
									</div>
									<div class="col-lg-2">
										<div class="badge">${job.jid }</div>
										<div class="margin-top-lg">${job.salary }/小时</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<%-- <tr>
						<td colspan="9" align="center">
							<!-- 显示首页 --> <c:if test="${page.pNum == 1}">
								<span class="page page_first">首页 </span>
								<span class="page page_up"> 上一页</span>
							</c:if> <c:if test="${page.pNum != 1}">
								<a href="/AListJobServlet?pNum=1" class="page page_first">首页</a>
								<a href="/AListJobServlet?pNum=${page.pNum-1 }"
									class="page page_up">上一页</a>
							</c:if> <!-- 当前页为中心前后各显示5页 --> <c:set var="begin" value="1" scope="page" />
							<c:set var="end" value="${page.totalPageNum}" scope="page" /> <!-- 判断前面有没有5页 -->
							<c:if test="${page.pNum-5>0}">
								<c:set var="begin" value="${page.pNum-5}" scope="page" />
							</c:if> <!-- 判断后面有没有5页 --> <c:if
								test="${page.pNum+5 < page.totalPageNum}">
								<c:set var="end" value="${page.pNum + 5}" scope="page" />
							</c:if> <!-- 当前页不显示链接 --> <c:forEach begin="${begin}" end="${end}"
								var="i">
								<c:if test="${page.pNum==i}">
									<span class="page">${i}</span>
								</c:if>
								<c:if test="${page.pNum!=i}">
									<a href="/AListJobServlet?pNum=${i}" class="page">${i} </a>
								</c:if>
							</c:forEach> <!-- 显示尾页 --> <c:if test="${page.pNum == page.totalPageNum}">
								<span class="page">下一页</span>
								<span class="page page_last"> 尾页</span>
							</c:if> <c:if test="${page.pNum != page.totalPageNum}">
								<a href="/AListJobServlet?pNum=${page.pNum + 1 }" class="page">下一页</a>
								<a href="/AListJobServlet?&pNum=${page.totalPageNum}"
									class="page page_last">尾页</a>
							</c:if> <input type="text" id="pNum" size="2" class="page" /><input
							type="button" value="go" onclick="jump();" class="page" />
						</td>
					</tr>
				 --%>
				 <div class="row">
                                <nav>
                                    <ul class="pager">
                                        <li><a href="AdminListjob?currentIndex=${page.currentIndex-3 }&&jianGe=3">上一页</a></li>

                                        <li><a href="AdminListjob?currentIndex=${page.currentIndex+3 }&&jianGe=3">下一页</a></li>
                                    </ul>
                                </nav>
                  </div>
				 
				</c:if>
			</div>
		</c:if>
	</div>
	<!-- end container -->
	<div>
		<jsp:include page="../master/a_foot.jsp"></jsp:include>
	</div>
</body>
</html>