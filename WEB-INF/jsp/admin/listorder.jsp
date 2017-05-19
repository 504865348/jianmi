<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
      <%@ page isELIgnored="false"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="Keywords" content="兼米网 江苏大学兼米网   镇江兼米网  镇江江苏大学兼米网  镇江兼职平台  江苏大学兼职平台">
            <meta name="Description" content="兼米网是镇江本地的一个兼职网站，为大学生提供真实可靠的兼职信息。丰富大学生生活，让大学生做兼职更有安全感。">
            <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
            <link href="css/jz.css" rel="stylesheet">
            <link href="css/admin.css" rel="stylesheet">
            <link href="images/jzme.ico" rel="shortcut icon" type="image/x-icon" />
            <script src="bootstrap/js/jquery.js"></script>
            <script src="bootstrap/js/bootstrap.js"></script>
            <title>管理员界面</title>
            <script type="text/javascript">
              /*   function jump() {
                    // 获得用户输入页码
                    var pNum = document.getElementById("pNum").value;
                    location.href = "/AdminOrderServlet?pNum=" + pNum;
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
                <c:if test="${not empty admin }">
                    <div class="col-lg-2">
                        <jsp:include page="../master/a_navside.jsp"></jsp:include>
                    </div>
                    <div class="col-lg-10">
                        <c:if test="${empty orders}">
                            <h1>还没有任务！</h1>
                        </c:if>
                        <c:if test="${not empty orders}">
                            <div class="list-group">
                                <c:forEach items="${orders}" var="order">
                                    <div class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-1">
                                                <div class="badge">
                                                    ${order.oid}
                                                </div>
                                            </div>
                                            <div class="col-lg-2">
                                                <a href="/ShowUserServlet?uid=${order.user.uid } " style="color:#00B38A">${order.user.username} </a>
                                            </div>
                                            <div class="col-lg-4">
                                                <div><a href="/ShowJobServlet?jid=${order.job.jid }&id=0">${order.job.title}</a></div>
                                                <div><a href="/ShowBusinessServlet?bid=${order.business.bid }">${order.business.bname}</a></div>
                                            </div>
                                            <div class="col-lg-5">
                                                <c:if test="${order.state=='0'}">
                                                    <div> 学生申请中，等待商家确认</div>
                                                    <div class="text-primary">申请时间:${order.applytime}</div>
                                                </c:if>
                                                <c:if test="${order.state=='1'}">商家已确认，任务开始</c:if>
                                                <c:if test="${order.state=='2'}">任务完成</c:if>
                                                <c:if test="${order.state=='3'}">任务失败</c:if>
                                                <c:if test="${order.state=='4'}">商家拒绝了学生的申请</c:if>
                                            </div>
                                        </div>

                                    </div>
                                </c:forEach>
                            </div>

                           <%--  <tr>
                                <td colspan="9" align="center">
                                    <!-- 显示首页 -->
                                    <c:if test="${page.pNum == 1}">
                                        <span class="page page_first">首页 </span><span class="page page_up"> 上一页</span>
                                    </c:if>
                                    <c:if test="${page.pNum != 1}">
                                        <a href="/AdminOrderServlet?pNum=1" class="page page_first">首页</a>
                                        <a href="/AdminOrderServlet?pNum=${page.pNum-1 }" class="page page_up">上一页</a>
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
                                            <a href="/AdminOrderServlet?pNum=${i}" class="page">${i} </a>
                                        </c:if>
                                    </c:forEach>

                                    <!-- 显示尾页 -->
                                    <c:if test="${page.pNum == page.totalPageNum}">
                                        <span class="page">下一页</span><span class="page page_last"> 尾页</span>
                                    </c:if>
                                    <c:if test="${page.pNum != page.totalPageNum}">
                                        <a href="/AdminOrderServlet?pNum=${page.pNum + 1 }" class="page">下一页</a>
                                        <a href="/AdminOrderServlet?pNum=${page.totalPageNum}" class="page page_last">尾页</a>
                                    </c:if>
                                    <input type="text" id="pNum" size="2" class="page" /><input type="button" value="go" onclick="jump();" class="page" />
                                </td>
                            </tr>
                       --%>
                       
				 
                        </c:if>
                        <div class="row">
                                <nav>
                                    <ul class="pager">
                                        <li><a href="AdminListorder?currentIndex=${page.currentIndex-3 }&&jianGe=3">上一页</a></li>

                                        <li><a href="AdminListorder?currentIndex=${page.currentIndex+3 }&&jianGe=3">下一页</a></li>
                                    </ul>
                                </nav>
                      </div>
                    </div>
                </c:if>
            </div>
            <!-- end container -->
            <div>
                <jsp:include page="../master/a_foot.jsp"></jsp:include>
            </div>
        </body>

        </html>