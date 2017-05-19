<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta charset="UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="../css/jz.css" rel="stylesheet">
	<link href="../images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="../bootstrap/js/jquery.js"></script>
	<script src="../bootstrap/js/bootstrap.js"></script>
    <title>管理员登陆</title>
  </head>
  <body>
    <form action="/ALoginServlet" method=post  class="form-signin">
	    <div class="container-fluid">
		    <div class="row">
		      	<h3 style="color:red;">${msg }</h3>
		        <h2 class="form-signin-heading">请登录</h2>
		        <div class="col-lg-12 margin-top-lg">
			        <label for="inputEmail" class="sr-only">请输入用户名</label>
			        <input type="text"  name="username" class="form-control" placeholder="用户名" required autofocus>
		        </div>
		        <div class="col-lg-12 margin-top-lg">
			        <label for="inputPassword" class="sr-only">Password</label>
			        <input type="password" id="inputPassword"name="password" class="form-control" placeholder="密码" required>
		        </div>
		        <div class="checkbox">
		          <label>
		            <input type="checkbox" value="remember-me"> 记住账号
		          </label>
		        </div>
		        <div class="col-lg-12 margin-top-lg">
		        <button class="btn bg-main width-12" type="submit">登录</button>
		        </div>
		    </div><!-- end class="row" -->
	    </div>
    </form>
  </body>
</html>
