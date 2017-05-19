<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head><meta http-equiv=Content-Type content='text/html; charset=UTF-8'>

<title>注册</title>
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
<link rel="stylesheet" href="../jzphone/bootstrap.css" type="text/css"/>
<script type="text/javascript" src="../jzphone/jquery.1.10.0.js-var=1440769219942"></script>
<script type="text/javascript" src="../jzphone/global.js-var=1440769219942"></script>
<script type="text/javascript" src="../jzphone/history.js-var=1440769219942" ></script>
<link href="../jzphone/reg.css-v=1.01.css"rel="stylesheet" type="text/css" />
<style>
        .modal-footer{
            text-align: center;
        }
        .close{
          width: 21px;
          height: 21px;
        }
    </style>
<script type="text/javascript" src="../jzphone/user.js-var=1440769219942"></script>
<script src="../jzphone/components-ak=uowUEH8rt0Xywk84UU1U1Q19&v=1.0"></script>
<script src="../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"/>
<script type="text/javascript">
$("#as").click(function(){
    $("#myModal").modal();
});

</script>

<script src="../js/sms.js" type="text/javascript"></script>
<script type="text/javascript">
		function ltrim(str) {
			if (str.length == 0)
				return (str);
			else {
				var idx = 0;
				while (str.charAt(idx).search(/\s/) == 0)
					idx++;
				return (str.substr(idx));
			}
		}

		//删除字符串右边的空格
		function rtrim(str) {
			if (str.length == 0)
				return (str);
			else {
				var idx = str.length - 1;
				while (str.charAt(idx).search(/\s/) == 0)
					idx--;
				return (str.substring(0, idx + 1));
			}
		}

		//删除字符串左右两边的空格
		function trim(str) {
			return (rtrim(ltrim(str)));
		}

		function validate(field) {
			var username = document.getElementById("username").value;
			var phoneNumReg = /(^[0-9]{3,4}\-[0-9]{7}$)|(^[0-9]{7}$)|(^[0-9]{3,4}[0-9]{7}$)|(^0{0,1}13[0-9]{9}$)/
			if (!phoneNumReg.test(username)) {
				document.getElementById("spanusername").innerHTML = "<font color='red'>× 请输入有效的手机号码</font>";
				return false;
			} else {
				var xmlHttp = null;
				//表示当前浏览器不是ie,如ns,firefox
				if (window.XMLHttpRequest) {
					xmlHttp = new XMLHttpRequest();
				} else if (window.ActiveXObject) {
					xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				//alert(document.getElementById("userId").value);
				//alert(field.value);
				if (trim(field.value).length != 0) {
					//创建Ajax核心对象XMLHttpRequest
					var url = "validateuser?username=" + trim(field.value);
					//设置请求方式为GET，设置请求的URL，设置为异步提交
					xmlHttp.open("GET", url, true);
					//将方法地址复制给onreadystatechange属性
					//类似于电话号码
					xmlHttp.onreadystatechange = function() {
						//alert(xmlHttp.readyState);
						//Ajax引擎状态为成功
						if (xmlHttp.readyState == 4) {
							//HTTP协议状态为成功
							if (xmlHttp.status == 200) {
								if (trim(xmlHttp.responseText) != "") {
									//alert(xmlHttp.responseText);
									if(xmlHttp.responseText==1){
									document.getElementById("spanusername").innerHTML = "<font color='red'>可以注册</font>";
											
											}
									else {
										document.getElementById("spanusername").innerHTML = "<font color='red'>该账号已被注册</font>";								
									}
									
											
								} else {
									document.getElementById("spanusername").innerHTML = "<font color='green'>√ 手机号码输入正确</font>"
								}
							} else {
								alert("请求失败，错误码=" + xmlHttp.status);
							}
						}
					}
					//将设置信息发送到Ajax引擎
					xmlHttp.send(null);
				} else {
					document.getElementById("spanusername").innerHTML = "";
				}
			}
		}
		function checkpassword(){
		var password = document.getElementById("password").value;
		if (password.length < 6 || password.length > 30) {  
        document.getElementById("spanpassword").innerHTML = "<font color='red'>× 密码长度不能小于6位，大于30位</font>";  
        return false;  
        }
        else {  
        document.getElementById("spanpassword").innerHTML = "<font color='green'>√ 密码合格</font>";  
        return true;  
        }  
    }
		
		function checkpasswordb(){
		var password = document.getElementById("password").value;
		var repassword = document.getElementById("repassword").value;
		if (repassword==null || repassword == "") {  
        document.getElementById("spanpasswordb").innerHTML = "<font color='red'>× 两次密码输入必须一致</font>";  
        return false;  }
		if(password != repassword){
		document.getElementById("spanpasswordb").innerHTML = "<font color='red'>× 两次密码输入必须一致</font>";
		return false;
		}else{
		document.getElementById("spanpasswordb").innerHTML = "<font color='green'>√ 再次输入密码合格</font>";
		return true;}
	}
	
	
	function checkForm(){
	 var spancode = $("#spancode").text(); 
	  if(spancode != "√ 短信验证码正确" ){ 
	  document.getElementById("spancode").innerHTML = "<font color='red'>× 短信验证码错误</font>";
	  return false;
	  }
	}
	</script>
<script type="text/javascript">
$("#as").click(function(){
    $("#myModal").modal();
});

</script>


</head>
<body>
	<div class="header tc">
		<a href="javascript:void(0)" class="h-l" onclick="myhistory.back()">
			<img src="../jzphone/arrowLeft.png" height="45" />
		</a> <span class="f18 link-green"><strong>注册</strong></span>
	</div>
	<form action="userregist" method="post" onsubmit="return checkForm();">
		<div class="regCon mt20">
			<div class="step" style="display: none">
				<span class="active">输入手机号</span><span>输入验证码</span><span>设置密码</span>
			</div>
			<div class="PnBox beee">
				<input id="username" name="username" type="text" class="Pn w100 f18"
					placeholder="输入手机号" required /onblur="validate(this)">
			</div>
			<div id="spanusername"></div>
			<div>${info }</div>
			<p class="mt20 f18 next tc">
				<div class="PnBox beee mt5"
					style="background-image:url(../jzphone/lockicon.png);">
					<input name="password" type="password" id="password" class="Pn w100 f18"
						placeholder="输入密码" onblur="checkpassword()" />
				</div>
				<div id="spanpassword"></div>
			</p>
			<p class="mt20 f18 next tc">
				<div class="PnBox beee mt5"
					style="background-image:url(../jzphone/lockicon.png);">
					<input name="repassword" type="password" id="repassword" class="Pn w100 f18"
						placeholder="输入再次密码" onblur="checkpasswordb()" />
				</div>
				<div id="spanpasswordb"></div>
			</p>
			
			
			<p class="mt10 link-grey f14">
				<label> <input name="" type="checkbox" checked="checked"
					value="" class="fl mt5 bddd" onchange="user.regToggle();" />我已阅读并同意
					</label>
					<a id="as" class="link-blue">兼职么协议</a>
			</p>
			<p class="mt20 f18 next tc">
				<button  id="btnReg" style="width:100%;background:#14AE67;"  type="submit"
					class="link-black dis pt10 pb10">确认注册</button>
			</p>
		</div>
	</form>
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title text-center" id="myModalLabel">
           兼米服务条款
        </h4>
      </div>
      <div class="modal-body">
           <p class="text-justify" style="text-indent: 2em">
               欢迎使用兼米公众平台，请在申请工作过程中自己与商家商谈避免上当受骗，保证自身人身财产安全，本平台目前仅提供兼职信息，对交易过程中产生的任何纠纷兼米公众平台将不负任何责任
           </p>
      </div>
      <div class="modal-footer ">
        <button type="button" class="btn btn-default" data-dismiss="modal">同意</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">不同意</button>
      </div>
    </div>
    
  </div>
</div>
	<script type="text/javascript">
$("#as").click(function(){
    $("#myModal").modal();
});

</script>

	
</body>
</html>
