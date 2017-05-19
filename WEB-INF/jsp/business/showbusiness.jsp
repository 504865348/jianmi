<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="/css/jz.css" rel="stylesheet">
	<link href="/css/business.css" rel="stylesheet">
	<link href="/images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="/bootstrap/js/jquery.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>
	<title>商家信息</title>  
</head>
  <body style="background:#EBE9E5;">

<jsp:include page="../master/b_top.jsp"/>
<div class="wrap center-block"><!-- article begin -->
		<div class="sb_info1">
			<div class="sb_info2 margin-buttom-lg" style="background:#fff;">
				<div class="pull-left" style="width:100px;margin-top:10px;margin-left:10px;">
					<span style="width:100px;height:100px;"><img src="<%=request.getContextPath()%>${business.logo}" style="width:100px;height:100px;"></span><!-- 商家图标 -->
				</div>
				<div class="pull-left" style="width:700px;margin-left:100px;padding-top:20px;">
					<span style="width:700px;margin-bottom:10px;">${business.bname}</span><!-- 商家名称 -->
					<span style="width:100px;">${business.city}</span><!-- 所在城市 -->
					<span style="width:200px;">${business.area}</span><!-- 所在地区 -->
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="sb_info3" style="background:#fff;margin-top:10px;">
				<span>公司地址：${business.address}</span><!-- address -->
				<span>负责人：${business.person}</span><!-- person -->
				<span>负责人手机号码：${business.pertel}</span><!-- phone -->
				<span>商家简介：${business.summary}</span><!-- summary -->
			</div>
		</div>
	</div>
<jsp:include page="../master/b_foot.jsp"/>
	
<!-- 
    <table>
              <tr>
                <td>商家信息</td>
			  </tr>
              <tr>
                <td>商家名称：</td>
                <td></td>
              </tr>
			  <tr>
                <td></td>
                <td></td>
              </tr>
               <tr>
                <td>营业执照：</td>
                <td><img src="<%=request.getContextPath()%>${loginBusiness.licence}"></td>
              </tr>
              <tr>
                <td>所在城市：</td>
                <td></td>
              </tr>
               <tr>
                <td>所在地区：</td>
                <td></td>
              </tr>
               <tr>
                <td>商家地址：</td>
                <td></td>
              </tr>
               <tr>
                <td>负责人：</td>
                <td></td>
              </tr>
               <tr>
                <td>负责人电话：</td>
                <td></td>
              </tr>
               <tr>
                <td>商家简介：</td>
                <td></td>
              </tr>
               <tr>
                <td>商家图片：</td>
                <td><img src="<%=request.getContextPath()%>${loginBusiness.pic1}"></td>
              </tr>
               <tr>
                <td>商家图片：</td>
                <td><img src="<%=request.getContextPath()%>${loginBusiness.pic2}"></td>
              </tr>
               <tr>
                <td>商家图片：</td>
                <td><img src="<%=request.getContextPath()%>${loginBusiness.pic3}"></td>
              </tr>
               
               <tr>
                <td>认证情况：</td>
                <td></td>
              </tr>
               <tr>
                <td>商户状态：</td>
                <td>${loginBusiness.state}</td>
              </tr>
              </table>
              --> 
  </body>
</html>
