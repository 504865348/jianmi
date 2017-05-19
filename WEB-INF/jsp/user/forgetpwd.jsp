<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

 <head> 
 <meta charset="UTF-8">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="../css/jz.css" rel="stylesheet">
	<link href="../css/user.css" rel="stylesheet">
	<link href="../images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="../bootstrap/js/jquery.js"></script>
	<script src="../bootstrap/js/bootstrap.js"></script>
	<script src="../bootstrap/js/jquery-2.1.1.min.js"></script>
    <title>忘记密码</title>	
 </head>
  <body>
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
									document.getElementById("spanusername").innerHTML = "<font color='green'>该手机号已注册</font>";
									}
									
								} else {
									document.getElementById("spanusername").innerHTML = "<font color='red'>× 手机号码不存在</font>"
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
		
	var InterValObj; //timer变量，控制时间  
        var count = 120; //间隔函数，1秒执行  
        var curCount;//当前剩余秒数  
        var pwd = ""; //验证码  
        var pwdLength = 6;//验证码长度  
   //返回密码   
    function returnPWD() {
	 
	  curCount = count;  
	  var username = $("#username").val(); 
	   var spanrealname = $("#spanrealname").text(); 
	/*  if(spanrealname != "√ 身份验证通过"){ 
	  document.getElementById("spanrealname").innerHTML = "<font color='red'>× 未通过身份验证</font>";
	  return false;
	  } */
                // 产生新密码 
                for ( var i = 0; i < pwdLength; i++) {  
                    pwd += parseInt(Math.random() * 9).toString();  
                }  
                // 设置button效果，开始计时  
                $("#btnSendpwd").attr("disabled", "true");  
                $("#btnSendpwd").val("请在" + curCount + "后重试");  
                InterValObj = window.setInterval(SetRemainTime, 1000); // 启动计时器，1秒执行一次  
                // 向后台发送处理数据  
                
                 $.ajax({  
                    type: "POST", // 用POST方式传输  
                    dataType: "TEXT", // 数据格式:JSON  
                    url: "forgetpwd", // 目标地址  
                    data: "username=" + username +"&pwd=" + pwd,   
                    success: function (data){   
                        data = parseInt(data, 10);  
                        if(data == 1){  
                            $("#spanusername").html("<font color='green'>√ 新密码已发到您的手机,请登陆后及时修改</font>");  
                        }else if(data == 0){  
                            $("#spanusername").html("<font color='red'>× 新密码发送失败，请重新发送</font>");  
                        }
                    }  
                });  
	  }
   
       
        
   

 
      
    //timer处理函数  
    function SetRemainTime() {  
        if (curCount == 0) {                  
            window.clearInterval(InterValObj);// 停止计时器  
            $("#btnSendpwd").removeAttr("disabled");// 启用按钮  
            $("#btnSendpwd").val("重新发送新密码");  
            pwd = ""; // 清除验证码。如果不清除，过时间后，输入收到的验证码依然有效  
        }else {  
            curCount--;  
            $("#btnSendpwd").val("请在" + curCount + "后重试");  
        }  
    }  
      
    //验证用户身份信息
     function checkout() {  
            var username = $("#username").val();  
            var realname = $("#realname").val();  
            // 向后台发送处理数据  
            $.ajax({  
                url : "/CheckOutServlet",   
                data : "realname="+realname+"&username="+username ,   
                type : "POST",   
                dataType : "text",   
                success : function(data) {  
                    data = parseInt(data, 10);  
                    if (data == 1) {  
                        $("#spanrealname").html("<font color='green'>√ 身份验证通过</font>");  
                    } else if(data == 0) {  
                        $("#spanrealname").html("<font color='red'>× 未通过身份验证</font>");  
                    }
                }
            });
    }
                    
                     
	</script> 
	<div class="container-fluid">
		<div class="row margin-top-lg">
			<div><h5 class="text-center">请输入手机号</h5></div>
		</div>
		<div class="row">
			<div class="center-block"> <input type="text" name="username" id="username" onblur="validate(this)" class="form-control"></div>
		</div>
		<div class="row">
			<div class="center-block"><span id="spanusername"></span></div>
		</div>
		
		<!-- <div class="row margin-top-lg">
			<div><h5 class="text-center">请填写真实姓名，网站没填写过为空</h5></div>
		</div>
		<div class="row">
			<div class="center-block">
				<input type="text" name="realname" id="realname" onblur="checkout()" class="form-control">
			</div>
		</div>
		<div class="row">
			<div class="center-block"><span id="spanrealname"></span></div>
		</div> -->
		
		<div class="row margin-top-lg"">
			<div class="center-block"> <input type="button" value="获取新密码(验证码为新密码)" id="btnSendpwd" name="btnSendpwd" onclick="returnPWD()" class="btn bg-main width-12" ></div>
		</div>
	
	</div>
  
   
   
   
  
  </body>
  
</html>
