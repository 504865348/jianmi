<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//Dspan HTML 4.01 spanansitional//EN">
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
	<link href="../css/admin.css" rel="stylesheet">
	<link href="../images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="../bootstrap/js/jquery.js"></script>
	<script src="..//bootstrap/js/bootstrap.js"></script>
    <title>管理员界面</title>   
    <title>添加商家</title>
  </head>
  
  <body class="container-fluid">
    <form action="/AddBusinessServlet" method="post">
		<div class="row">
		    <span class="row">
			    <span class="center-block text-center">商家用户名</span>
			    <span><input type="text" name="username" class="form-control"></span>
		    </span>
		    <span class="row">
			    <span class="center-block text-center">密码</span>
			    <span><input type="password" name="password" class="form-control"></span>
		    </span>
		    <span class="row">
		    <span><input type="submit" value="添加" class="btn bg-main width-12"></span>
		    </span>
		 </div>
    </form>
  </body>
</html>
