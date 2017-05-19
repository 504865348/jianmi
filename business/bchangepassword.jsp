<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/user.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>	
	<title>修改密码</title>  
 </head>

  <body>
  <script type="text/javascript">
	function checkForm(){
	 var spanpassword = $("#spanpassword").text(); 
	 var spanrepassword = $("#spanrepassword").text(); 
	  if(spanpassword != "√ 新密码合格" ){ 
	  document.getElementById("spanpasscode").innerHTML = "<font color='red'>× 密码长度不能小于6位，大于30位</font>";
	  return false;
	  }
	   if(spanrepassword != "√ 再次输入密码合格" ){ 
	  document.getElementById("spanrepasscode").innerHTML = "<font color='red'>× 两次密码输入必须一致</font>";
	  return false;
	  }
	}
		
	function checkpassword(){
		var password = document.getElementById("password").value;
		if (password.length < 6 || password.length > 30) {  
        document.getElementById("spanpassword").innerHTML = "<font color='red'>× 密码长度不能小于6位，大于30位</font>";  
        return false;  
        }
        else {  
        document.getElementById("spanpassword").innerHTML = "<font color='green'>√ 新密码合格</font>";  
        return true;  
        }  
    }
		
	function checkrepassword(){
		var password = document.getElementById("password").value;
		var repassword = document.getElementById("repassword").value;
		if(password != repassword){
		document.getElementById("spanrepassword").innerHTML = "<font color='red'>× 两次密码输入必须一致</font>";
		return false;
		}else{
		document.getElementById("spanrepassword").innerHTML = "<font color='green'>√ 再次输入密码合格</font>";
		return true;}
	}
	</script>
 <c:if test="${empty loginBusiness}"><script>alert('您还没有登录!');window.location.href="/business/businesslogin.jsp";</script></c:if>

<div><!-- article -->
	<div>
		<c:if test="${not empty loginBusiness }">
        <form action="/BChangepwdServlet" method="post" onSubmit="return checkForm()">
             <table class="table">
              <tr>
                <td>新密码</td>
              </tr>
              <tr>
                <td><input type="password" name="password" class="form-control"
                 id="password" onblur="checkpassword()"></td>
              </tr>
              <tr>
                <td><span id="spanpassword"></span></td>
               </tr>
              <tr>
                <td>重复新密码：</td>
              </tr>
              <tr>
                <td><input type="password" name="repassword" class="form-control"
                id="repassword" onblur="checkrepassword()"></td>
              </tr>
              <tr>
                <td><span id="spanrepassword"></span></td>
              </tr>
              
			  <tr>
            	<td colspan="3"><input class="btn btn-success margin-top-lg" type="submit" value="提交"></td>
			  </tr>
            </table>
        </form>
  </c:if>
	</div>
</div>
</body>
</html>
