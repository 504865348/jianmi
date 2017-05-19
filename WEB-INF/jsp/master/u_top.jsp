<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<c:if test="${empty user}">
<!-- 
<script>
alert('您还没有登录!');window.location.href="/user/userlogin.jsp";</script>
 -->
</c:if>
<c:if test="${not empty user }">
	<div class="bg-main margin-bottom-lg"><!--header-->
			<div class="top"> 
				<a href="/jzme.jsp"><img src="../images/logo.png" alt="兼职么网"></img></a>				 				
				<span class="text-white ad">一家专为学生服务的兼职平台</span>
				<a href="/user/user.jsp" class="text-white ">
					<span class="glyphicon glyphicon-user text-white"></span>
					${user.username}
				</a>
			</div>
	</div><!--header end-->
</c:if>

