<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <div class="bg-main margin-bottom-lg"><!--header-->
		<div class="top"> 
			<a href="/jzme.jsp"><img src="/images/logo.png" alt="兼职么网"></img></a>				 				
			<span class="text-white ad">一家专为学生服务的兼职平台</span>
			<c:if test="${empty loginUser && empty loginBusiness}">
			<a href="/user/userregister.jsp" class="text-white">
				<span class="fa fa-pencil-square-o text-white"></span>
				注册
			</a>
			<a href="/user/userlogin.jsp" class="text-white" >
			<span class="glyphicon glyphicon-user text-white"></span>
				登陆
			</a>
			</c:if>
			<c:if test="${empty loginBusiness && not empty loginUser}">
				<a href="/user/user.jsp" class="text-white ">
					<span class="glyphicon glyphicon-user text-white"></span>
					${loginUser.username}
				</a>
			</c:if>
			<c:if test="${empty loginUser && not empty loginBusiness}">
					<a href="/business/business.jsp" class="text-white ">
					<span class="glyphicon glyphicon-user text-white"></span>
					${loginBusiness.username}
					</a>
			</c:if>
			<c:if test="${not empty loginUser && not empty loginBusiness}">
					<a href="/jzme.jsp" class="text-white ">
					<span class="glyphicon glyphicon-user text-white"></span>
					商家和用户不能同时登陆
					</a>
			</c:if>
		</div>
	</div><!--header end-->