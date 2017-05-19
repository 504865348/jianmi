<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:if test="${empty loginAdmin}"><script>alert('您还没有登录!');window.location.href="/admin/login.jsp";</script></c:if>
 <div class="bg-main margin-bottom-lg"><!--header-->
		<div class="top"> 
			<a href="/jzme.jsp"><img src="/images/logo.png" alt="兼职么网"></img></a>				 				
			<span class="text-white ad">一家专为学生服务的兼职平台</span>
					<span>
						<span class="glyphicon glyphicon-user text-white"></span>
						<span>vastsum</span>
					</span>
		</div>
	</div><!--header end-->