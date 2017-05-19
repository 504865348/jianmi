       var InterValObj; //timer变量，控制时间  
    var count = 120; //间隔函数，1秒执行  
    var curCount;//当前剩余秒数  
    var code = ""; //验证码  
    var codeLength = 6;//验证码长度  
      
    function sendMessage() { 
    	
        curCount = count;  
        var username = $("#username").val();  
        var spanusername = $("#spanusername").text();  
        if (username != "") {  
            if(spanusername == "√ 手机号码输入正确" || spanusername == "√ 短信验证码已发到您的手机,请查收"){  
                // 产生验证码  
                for ( var i = 0; i < codeLength; i++) {  
                    code += parseInt(Math.random() * 9).toString();  
                }  
                // 设置button效果，开始计时  
                $("#btnSendCode").attr("disabled", "true");  
                $("#btnSendCode").val("请在" + curCount + "秒内输入验证码");  
                InterValObj = window.setInterval(SetRemainTime, 1000); // 启动计时器，1秒执行一次  
                // 向后台发送处理数据  
                
                 $.ajax({  
                    type: "POST", // 用POST方式传输  
                    dataType: "TEXT", // 数据格式:JSON  
                    url: "/SendMessageServlet", // 目标地址  
                    data: "username=" + username +"&code=" + code,   
                    success: function (data){   
                        data = parseInt(data, 10);  
                        if(data == 1){  
                            $("#spanusername").html("<font color='green'>√ 短信验证码已发到您的手机,请查收</font>");  
                        }else if(data == 0){  
                            $("#spanusername").html("<font color='red'>× 短信验证码发送失败，请重新发送</font>");  
                        }
                    }  
                });  
            }
        }
    
                    
      
             
    else{  
        	$("#spanusername").html("<font color='red'>× 手机号码不能为空</font>");
        }  
    }  
      
    //timer处理函数  
    function SetRemainTime() {  
        if (curCount == 0) {                  
            window.clearInterval(InterValObj);// 停止计时器  
            $("#btnSendCode").removeAttr("disabled");// 启用按钮  
            $("#btnSendCode").val("重新发送验证码");  
            code = ""; // 清除验证码。如果不清除，过时间后，输入收到的验证码依然有效  
        }else {  
            curCount--;  
            $("#btnSendCode").val("请在" + curCount + "秒内输入验证码");  
        }  
    }  
      
    function checkpasscode() {  
        
            var passcode = $("#passcode").val();  
            // 向后台发送处理数据  
            $.ajax({  
                url : "/CheckSmsCodeServlet",   
                data : "passcode="+passcode ,   
                type : "POST",   
                dataType : "text",   
                success : function(data) {  
                    data = parseInt(data, 10);  
                    if (data == 1) {  
                        $("#spancode").html("<font color='green'>√ 短信验证码正确</font>");  
                    } else if(data == 0) {  
                        $("#spancode").html("<font color='red'>× 短信验证码错误</font>");  
                    }
                }
            });
    }
                    
                  
    