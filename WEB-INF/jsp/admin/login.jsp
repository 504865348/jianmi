<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
            <title>管理员登陆</title>
        </head>
      

        <body>
            <form action="Adminlogin1" method=post class="form-signin">
                <div class="container">
                    <div class="center-block width-3">
                        <h3 style="color:red;">${msg}</h3>
                       
                        <h2 class="form-signin-heading">请登录</h2>
                        <label for="inputEmail" class="sr-only">请输入用户名</label>
                        <input type="text" name="username" value="${cookie.username.value}" class="form-control" placeholder="用户名" required autofocus>
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input type="password" id="inputPassword" name="password"  value="${cookie.password.value}" class="form-control" placeholder="密码" required>
                        <div class="checkbox">
                            <label>
		            <input type="checkbox"  name="autoLogin"> 记住账号
		          </label>
                        </div>
                        <button class="btn btn-lg btn-success btn-block" type="submit">登录</button>
                    </div>
                </div>
            </form>
        </body>
                <%--  <table class="table table-striped">
                          <thead>
                          <tr>
                              <th>订单号</th>
                              <th>用户</th>
                              <th>售价</th>
                              <th>下单时间</th>
                              <th>结账时间</th>
                          </tr>
                          </thead>
                          <tbody>
                             <tr>
                              <td>1,001</td>
                              <td>Lorem</td>
                              <td>ipsum</td>
                              <td>dolor</td>
                              <td>sit</td>
                             </tr>
                             <c:forEach items="${jobs}" var="job"> 
                             <tr>
                              <td>${job.jid }</td>
                              <td>${job.title }</td>
                              
                             </tr>
                              </c:forEach>
                          </tbody>
                      </table>
                          
                   <a href="AdminListbusiness?currentIndex=0&&jianGe=3">nihao</a>
                   <a href="AdminListjob?currentIndex=0&&jianGe=3">nihao</a>
                   <a href="AdminListorder?currentIndex=0&&jianGe=3">nihao</a>
                   <a href="AdminListuser?currentIndex=0&&jianGe=3">nihao</a>
       
        --%>
       
        </html>