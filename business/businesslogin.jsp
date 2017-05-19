<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-cn">
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/business.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>	
  <title>商家登陆</title>
 </head>
 <body>
 <script type="text/javascript">
 function change(){
		document.getElementById("checkcode").src = "/CheckCode?"+new Date().getTime();
	}
 </script>
  <br /><br />
  <div class="container-fiuld">
			<div>
				<a href="/jzme.jsp" target="_blank"><img src="/images/logog.png" class="center-block" /></a>
			</div>
			<br />
			<div>
				<form action="/BLoginServlet" method="post">
							 <h5 style="color:red;" class="center-block">${msg }</h5>
		                    <div class="input-group margin-top-lg">
		                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
		                        <input type="text" name="username" placeholder="用户名" data-validate="required:请输入手机号" class="form-control" />
		                    </div>
		                    <div class="input-group margin-top-lg">
								 <span class="input-group-addon"><span class="glyphicon glyphicon-align-justify"></span></span>
								<input type="password" name="password" class="form-control" placeholder="密码" data-validate="required:请输入密码,length#>=6:密码长度不符合要求" />
		                    </div>
		                    <div class="row margin-top-lg">
		                        <span class="col-xs-7"><input type="text" class="form-control" name="checkcode" placeholder="请输入验证码" data-validate="required:请输入验证码" /></span>
		                        <span class="col-xs-5"><img id="checkcode" src="/CheckCode" style="cursor:pointer;"onclick="change();"/></span>
		                    </div>
		                    <div class=" margin-top-lg">
								<div class="col-xs-8"><label><input name="autologin" type="checkbox">下次自动登录</label></div>
								<div class="col-xs-4"><a target="_blank" href="/forgetpassword.jsp">忘记密码？</a></div> 
							</div>
		                	<div class="margin-top-lg">
								<button class="btn bg-main width-12">登陆</button>
							</div>      
						</form>
				</div>
		  </div>	

</body>
</html>
