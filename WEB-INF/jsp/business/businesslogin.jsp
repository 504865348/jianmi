<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="zh-cn">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="Keywords"
	content="兼米网 江苏大学兼米网   镇江兼米网  镇江江苏大学兼米网  镇江兼职平台  江苏大学兼职平台">
<meta name="Description"
	content="兼米网是镇江本地的一个兼职网站，为大学生提供真实可靠的兼职信息。丰富大学生生活，让大学生做兼职更有安全感。">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/jzme.css">
<link rel="stylesheet" href="css/jz.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<!-- <script src="js/sms.js"></script> -->
<title>商家登陆</title>
</head>
<body>
	<script type="text/javascript">
 function change(){
		
	/*   document.getElementById("checkcode").src = "CheckCode?"+new Date().getTime();
	 */
	  /*  
	 wangwang 123456
	 */
 }
 </script>
	<div class="container">
		<br />
		<br /> <br />
		<br />
		<div class="center-block width-5">
			<a href="/jzme.jsp" target="_blank"><img src="images/logog.png"
				class="center-block" /></a>
		</div>
		<br /> <br /> <br /> <br />
		<div class="center-block width-5">
			<form:form action="businessloginView1" method="post">
				<div class="field field-icon">
					<h3 style="color: red;">${msg }</h3>
					<span class="icon icon-user"></span> <input type="text"
						class="input inpu" name="username" placeholder="手机号"
						data-validate="required:请输入手机号" />
				</div>
				<div class="field field-icon">
					<span class="icon icon-key"></span> <input type="password"
						class="input inpu" name="password" placeholder="密码"
						data-validate="required:请输入密码,length#>=6:密码长度不符合要求" />
				</div>
				<div class="field field-icon">
					<span class="icon icon-barcode"></span> <input
						style="display: inline; width: 200px; margin-bottom: 0px"
						type="text" class=" input" name="checkcode" placeholder="请输入验证码"
						data-validate="required:请输入验证码" /> 
						<!-- <img id="checkcode"
						src="/CheckCode"
						style="width: 95px; height: 34px; cursor: pointer;"
						onclick="change();" /> -->
				</div>
				<div class="field margin-top">
					<label><input name="autologin" type="checkbox">下次自动登录</label>
					<a style="margin-left: 130px" class="text-main " target="_blank"
						href="updatePassView2">忘记密码？</a>
				</div>
				<div class=" field margin-top ">
					<button style="width: 300px" class="button bg-main ">登陆</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
