<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/user.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>	
	<title>个人中心</title>  
</head>
<body>
<c:if test="${empty loginBusiness}"><script>alert('您还没有登录!');window.location.href="/business/businesslogin.jsp";</script></c:if>
  <c:if test="${not empty loginBusiness }">
<!-- 显示 javabean对象信息 -->
<c:if test="${empty job}">
	<h2>您查询兼职不存在！</h2>
</c:if>
<c:if test="${not empty job}">
	 <table>
              <tr>
                <td>兼职详情</td>
			  </tr>
              <tr>
                <td>兼职标题：</td>
                <td>${job.title}</td>
              </tr>
			  <tr>
                <td>兼职图片：</td>
                <td><img src="<%=request.getContextPath()%>${job.jurl}"></td>
              </tr>
               <tr>
                <td>兼职类型：</td>
                <td>${job.jobtype}</td>
              </tr>
              <tr>
                <td>工资：</td>
                <td>${job.salary}</td>
              </tr>
               <tr>
                <td>招收人数：</td>
                <td>${job.personnum}</td>
              </tr>
               <tr>
                <td>已招人数：</td>
                <td>${job.lastnum}</td>
              </tr>
               <tr>
               <td>发布商家</td>
                <td><a href="/ShowBusinessServlet?bid=${job.business.bid }">${job.business.bname}</a></td>
              </tr>
               <tr>
                <td>兼职内容：</td>
                <td>${job.content}</td>
              </tr>
               <tr>
                <td>任职要求：</td>
                <td>${job.ask}</td>
              </tr>
               <tr>
                <td>报名截止时间：</td>
                <td>${job.endtime}</td>
              </tr>
              
               <tr>
                <td>面试时间：</td>
                <td>${job.interviewtime}</td>
              </tr>
              
               <tr>
                <td>培训时间：</td>
                <td>${job.traintime}</td>
              </tr>
               <tr>
                <td>工作时间：</td>
                <td>${job.worktime}</td>
              </tr>
               <tr>
                <td>工作地点：</td>
                <td>${job.workplace}</td>
              </tr>
              <tr>
                <td>性别要求：</td>
                <td>${job.gender}</td>
              </tr>
            <tr>
                <td>兼职发布时间：</td>
                <td>${job.pubtime}</td>
              </tr>
			</table>
</c:if>
</c:if>
</body>
</html>