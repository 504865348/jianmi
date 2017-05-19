<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="css/jz.css" rel="stylesheet">
	<link href="css/business.css" rel="stylesheet">
	<link href="images/jzme.ico" rel="shortcut icon" type="image/x-icon" /> 
	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>	
	<title>商家信息</title>  
</head>
  <body style="background:#fff;">

<jsp:include page="../master/b_top.jsp"/>
<div class="container center-block"><!-- article -->
	<div class="row">
		<div class="col-lg-2">
			<jsp:include page="../master/b_navside.jsp"/>
		</div>
		<div class="col-lg-10" style="background:#fff;">
			<c:if test="${ not empty business }">
		  		<div style="width:100%;overflow:hidden;" >
		   		 <table class="binfo_info table">
		              <tr>
		                <td class="width-2">商家名称：</td>
		                <td class="width-9">${business.bname}</td>
		              </tr>
		              <tr>
		              <td>好评数<a href="/ListCommentServlet?id=2&pNum=1&bid=${business.bid}">${business.goodas}</a></td>
		              <td>差评数<a href="/ListCommentServlet?id=2&pNum=1&bid=${business.bid}">${business.badas}</a></td>
		              </tr>
					  <tr>
		                <td>商家图标：</td>
		                
		                <%-- <td><img src="<%=request.getContextPath()%>${business.logo}" class="img-responsive" style="width:100px;height:auto;"></td>
		              --%>
		              </tr>
		               <tr>
		                <td>营业执照：</td>
		               <%--  
		                <td><img src="<%=request.getContextPath()%>${business.licence}"  class="img-responsive" style="width:100px;height:auto;"></td>
		              --%>
		              </tr>
		              <tr>
		                <td>所在城市：</td>
		                <td>${business.city}</td>
		              </tr>
		               <tr>
		                <td>所在地区：</td>
		                <td>${business.area}</td>
		              </tr>
		               <tr>
		                <td>商家地址：</td>
		                <td>${business.address}</td>
		              </tr>
		               <tr>
		                <td>负责人：</td>
		                <td>${business.person}</td>
		              </tr>
		               <tr>
		                <td>负责人电话：</td>
		                <td>${business.pertel}</td>
		              </tr>
		               <tr>
		                <td>商家简介：</td>
		                <td>${business.summary}</td>
		              </tr>
		               <tr>
		                <td>商家图片：</td>
		              <%--   <%=request.getContextPath()%> --%>
		                <td><img src="../jianzhi${business.pic1}" class="img-responsive" style="width:100px;height:auto;"></td>
		              </tr>
		               <tr>
		                <td>商户状态：</td>
		                <td><c:if test="${business.active=='4'}">正常</c:if>
		                <c:if test="${business.active=='3'}">异常</c:if>
		                </td>
		              </tr>
		               <tr>
		                <td>认证状态</td>
		                <td>已认证</td>
		              </tr>
		            	<tr>
			              <td><input type="button" value="修改资料" onclick="location.href='/business/bchange.jsp';" class="btn btn-success"/></td>
			            
		              </tr>
					</table>
				</div>
			</c:if>
	</div>
	</div>
</div>	
<jsp:include page="../master/b_foot.jsp"/>
  </body>
</html>