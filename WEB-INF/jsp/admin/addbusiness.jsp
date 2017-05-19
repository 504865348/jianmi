<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
    <style>
		td{
			display:inline-block;
		}
	</style>
    <title>添加商家</title>
    <!--e10adc3949ba59abbe56e057f20f883e  -->
  </head>
  
  <body>
    <form:form action="addAddbusiness" method="post">
    	<div>
    		 <jsp:include page="../master/a_top.jsp"/>
    	</div><!-- end top -->
    	<div class="container">
    		<div class="col-lg-2">
    			<jsp:include page="../master/a_navside.jsp"></jsp:include>
    		</div>
    		<div class="col-lg-10">
    			<table class="table">
				    <tr>
				    <td class="width-2">商家用户名</td>
				    <td class="width-5">
				    <input type="text" name="username" class="form-control">
				   
				    </td>
				    </tr>
				    <tr>
				    <td class="width-2">密码</td>
				    <td class="width-5"><input type="password" name="password" class="form-control"></td>
				    </tr>
				    <tr>
				    <td colspan="2"><input type="submit" value="添加" class="btn btn-success"></td>
				    </tr>
		    </table>
    		</div>
    	</div><!-- end container -->
    	<div>
    		<jsp:include page="../master/a_foot.jsp"></jsp:include>
    	</div>
    </form:form>
    
  </body>
</html>
