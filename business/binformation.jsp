<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//Dspan HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/business.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>	
	<title>商家信息</title>  
</head>
  <body style="background:#fff;">
  <c:if test="${empty loginBusiness}"><script>alert('您还没有登录!');window.location.href="/business/businesslogin.jsp";</script></c:if>
<div><!-- article -->
	<div>
	<c:if test="${not empty loginBusiness }">
  		<div>
   		 <div class="list-group">
              
                <span class="list-group-item text-main text-center">商家名称</span>
                <span class="list-group-item">${loginBusiness.bname}</span>
              
              
              <span class="list-group-item">好评数<a href="/ListCommentServlet?id=2&pNum=1&bid=${loginBusiness.bid}">${loginBusiness.goodas}</a></span>
              <span class="list-group-item">差评数<a href="/ListCommentServlet?id=2&pNum=1&bid=${loginBusiness.bid}">${loginBusiness.badas}</a></span>
              
			  
                <span class="list-group-item text-main text-center">商家图标</span>
                <span class="list-group-item"><img src="<%=request.getContextPath()%>${loginBusiness.logo}" class="img-responsive" style="width:100px;height:auto;"></span>
              
               
                <span class="list-group-item text-main text-center">营业执照</span>
                <span class="list-group-item"><img src="<%=request.getContextPath()%>${loginBusiness.licence}"  class="img-responsive" style="width:100px;height:auto;"></span>
              
              
                <span class="list-group-item text-main text-center">所在城市</span>
                <span class="list-group-item">${loginBusiness.city}</span>
              
               
                <span class="list-group-item text-main text-center">所在地区</span>
                <span class="list-group-item">${loginBusiness.area}</span>
              
               
                <span class="list-group-item text-main text-center">商家地址</span>
                <span class="list-group-item">${loginBusiness.address}</span>
              
               
                <span class="list-group-item text-main text-center">负责人</span>
                <span class="list-group-item">${loginBusiness.person}</span>
              
               
                <span class="list-group-item text-main text-center">负责人电话</span>
                <span class="list-group-item">${loginBusiness.pertel}</span>
              
               
                <span class="list-group-item text-main text-center">商家简介</span>
                <span class="list-group-item">${loginBusiness.summary}</span>
              
               
                <span class="list-group-item text-main text-center">商家图片</span>
                <span class="list-group-item"><img src="<%=request.getContextPath()%>${loginBusiness.pic1}" class="img-responsive" style="width:100px;height:auto;"></span>
              
               
                <span class="list-group-item text-main text-center">商户状态</span>
                <span class="list-group-item"><c:if test="${loginBusiness.active=='4'}">正常</c:if>
                <c:if test="${loginBusiness.active=='3'}">异常</c:if>
                </span>
              
               
                <span class="list-group-item">认证状态</span>
                <span class="list-group-item">已认证</span>
              
            	
	              <span class="list-group-item"><input type="button" value="修改资料" onclick="location.href='/business/bchange.jsp';" class="btn bg-main width-12"/></span>
              
			</div><!-- end class="list-group" -->
		</div>
	</c:if>
	</div>
</div>
  </body>
</html>