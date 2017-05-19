<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<a href="/jzme.jsp" class="list-group-item">首页</a>
	<a href="/user/user.jsp" class="list-group-item">个人信息</a>
	<a href="/OrderServlet?&pNum=1" class="list-group-item">我的兼职</a>
	<a href="/user/userchange.jsp" class="list-group-item">修改个人信息</a>
	<a href="/user/changepassword.jsp" class="list-group-item">修改账户密码</a>
	<a href="/ListCommentServlet?id=1&pNum=1&uid=${loginUser.uid}" class="list-group-item">我的评论</a>   <a href="/invalidate.jsp" class="list-group-item">注销</a>