<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ page isELIgnored="false"%>
        <!DOCTYPE HTML>
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
            <title>显示商家</title>
            <script type="text/javascript">
                function jump() {
                    // 获得用户输入页码
                    /* var pNum = document.getElementById("pNum").value;
                    location.href="/ListBusinessServlet?pNum="+pNum; */
                }
            </script>
        </head>

        <body>
            <!-- 显示list数据 -->
            <div>
                <jsp:include page="../master/a_top.jsp" />
            </div>
            <!-- end top -->
            <div class="container">
                <c:if test="${ not empty admin }">
                    <div class="col-lg-2">
                        <jsp:include page="../master/a_navside.jsp"></jsp:include>
                    </div>
                    <div class="col-lg-10">
                        <c:if test="${empty businesses}">
                            还没有商户！
                        </c:if>
                        <c:if test="${not empty businesses}">
                            <!-- 用分隔线分隔 -->
                            <c:forEach items="${businesses}" var="business">
                                ${business.bid }商户编号<a href="/ShowBusinessServlet?bid=${business.bid }"> ${business.bid }</a>
                                <span style="color:#00B38A">商户名称 ${business.bname }</span> 用户状态
                                <c:if test="${business.state=='3'}">封号中<a href="/AdminServlet?bid=${business.bid}&state=4&pNum=${page.pNum}">解封</a></c:if>
                                <c:if test="${business.state=='4'}">正常<a href="/AdminServlet?bid=${business.bid}&state=3&pNum=${page.pNum}">封号</a></c:if>
                                <hr/>
                            </c:forEach>
                            <div class="row">
                                <nav>
                                    <ul class="pager">
                                        <li><a href="AdminListbusiness?currentIndex=${page.currentIndex-3 }&&jianGe=3">上一页</a></li>

                                        <li><a href="AdminListbusiness?currentIndex=${page.currentIndex+3 }&&jianGe=3">下一页</a></li>
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