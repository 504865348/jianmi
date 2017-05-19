<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head><meta http-equiv=Content-Type content='text/html; charset=UTF-8'>
<title>登陆</title>
<div id='wx_pic' style='margin: 0 auto; display: none;'>
   <img src="../jzphone/share.jpg"/>
</div>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="兼职,兼职么,大学生兼职网,兼职神器">
<meta http-equiv="description" content="兼职么（jzme.cn），一个专为大学生服务的兼职平台！">
<link rel='icon shortcut' href='../jzphone/favicon.ico' />
<link rel="stylesheet" href="../jzphone/common.css" type="text/css"/>
<link rel="stylesheet" href="../jzphone/style.css" type="text/css"/>
<script type="text/javascript" src="../jzphone/jquery.1.10.0.js-var=1440769219942"></script>
<script type="text/javascript" src="../jzphone/global.js-var=1440769219942"></script>
<script type="text/javascript" src="../jzphone/history.js-var=1440769219942" ></script>
<link href="../jzphone/reg.css-v=1.01.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../jzphone/user.js-var=1440769219942"></script>
</head>
<body>
<form action="userlogin" method="post">
	<div class="regCon">
		<img src="../jzphone/logo.png-v=1.01.png"width="100%"
			class="dis" />
		<div class="PnBox beee"
			style="background-image:url(../jzphone/headicon.png);">
			<input name="username" type="text" id="userNameText" class="Pn w100 f18"
				 placeholder="请输入用户名" required />
		</div>
		<div class="PnBox beee mt5"
			style=" background-image:url(../jzphone/lockicon.png);">
			<input name="password" type="password" id="passwordText" class="Pn w100 f18"
				 placeholder="请输入密码" required />
		</div>
		<!-- <div class="PnBox beee mt5">
                <span class="fa fa-barcode ur_span1"></span>
                <input type="text" name="checkcode" placeholder="请输入验证码" data-validate="required:请输入验证码" class="Pn  f18" style="text-indent:20px;width:50%;" />
                <img id="checkcode" src="/CheckCode"  onclick="change();" style="width:35%;margin-left:10%;" />
         </div> -->
		<div class="mt20 f18 next tc">
			<button style="width:100%;background:#14AE67;"
				class="link-black dis pt10 pb10">登录</button>
		</div>
		<div class="mt20 f18 next tc">
			<a   href="userregistTo"
				class="link-black dis pt10 pb10">注册</a>
		</div>
  
		<div class="clearfix mt15">
			<a href="forgetpwdPage" class="fr">忘记密码？</a>
		</div>
	</div>
</form>
</body>
</html>