<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/carousel.css">
    <style>
       .my{
           padding-top: 90px;
       }
    </style>

    <title>后台管理</title>
</head>
<body>
    <div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">兼米网</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">后台主页</a></li>
                        <li><a href="#about">用户管理</a></li>
                        <li><a href="#contact">商家管理</a></li>
                        <li><a href="#contact">兼职管理</a></li>
                        <li><a href="#contact">兼职订单</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">管理员<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">你好，王玉</a></li>
                                <li><a href="#">个人中心</a></li>
                                <li><a href="#">退出</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
    </div>
    <div class="container my">
          <div class="row">
              <div class="col-md-3">
                  <div class="list-group">
                      <a href="#" class="list-group-item active">
                          用户管理
                      </a>
                      <a href="#" class="list-group-item">个人用户</a>
                      <a href="#" class="list-group-item" id="user">所有用户</a>

                  </div>
                  <div class="list-group">
                      <a href="#" class="list-group-item active">
                          商家管理
                      </a>
                      <a href="#" class="list-group-item">添加兼职</a>
                      <a href="#" class="list-group-item">个体商家</a>
                      <a href="#" class="list-group-item">所有商家</a>

                  </div>
                  <div class="list-group">
                      <a href="#" class="list-group-item active">
                          兼职管理
                      </a>
                      <a href="#" class="list-group-item">兼职状态</a>
                      <a href="#" class="list-group-item">所有兼职</a>

                  </div>
                  <div class="list-group">
                      <a href="#" class="list-group-item active">
                          兼职订单
                      </a>
                      <a href="#" class="list-group-item">查看订单</a>
                      <a href="#" class="list-group-item">财务记录</a>

                  </div>
              </div>
              <div class="col-md-9">

                  <table class="table table-striped">
                      <thead>
                      <tr>
                          <th>编号</th>
                          <th>姓名</th>
                          <th>电话</th>
                          <th>地址</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                          <td>1,001</td>
                          <td>Lorem</td>
                          <td>ipsum</td>
                          <td>dolor</td>
                      </tr>
                      </tbody>
                      </table>
              </div>
          </div>
    </div>
    <script src="../dist/js/jquery.min.js"></script>
    <script src="../dist/js/bootstrap.min.js"></script>
    <!--
       在下面code
    -->
    <script>
        $(function(){
            $("#user").click(function(){
                $.ajax({
                    url:"http://localhost:9080/jianzhi/user",
                    type:"post",
                    data:"uid=1",
                    success:function(data){
                         alert("asad");
                         $.each(data,function(i,user){
                         alert("name"+user.uid+"  "+"value"+user.username+"pass"+user.password)
                         })
                    },
                    error:function(){
                        alert("返回失败");
                    }
                })
            });
        })

    </script>
</body>
</html>