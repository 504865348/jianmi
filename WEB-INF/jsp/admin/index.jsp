<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
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
  </head>  
  <body>
  	<div>
  		<jsp:include page="../master/a_top.jsp"/>
  	</div>
	<div class="container">
		<c:if test="${not empty admin }">
			<div class="row">
				<div class="col-lg-2">
					<jsp:include page="../master/a_navside.jsp"></jsp:include>
				</div>
				<div class="col-lg-10">
					<table class="table table-bordered">
						<tr class="text-center">
							<td><a href="http://tongji.cnzz.com/" target="_blank">CNZZ数据统计网站</a></td>
							<td><a href="http://zhanzhang.baidu.com/" target="_blank">百度站长</a></td>
							<td><a href="http://http://www.aliyun.com/" target="_blank">阿里云服务器</a></td>
							<td><a href="https://mp.weixin.qq.com/" target="_blank">微信公众平台</a></td>
							<td><a href="http://mp.wsq.qq.com/" target="_blank">微社区</a></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
				</div><!-- right -->
			</div>
    </c:if>
	</div>
<jsp:include page="../master/a_foot.jsp"></jsp:include>
  </body>
</html>
