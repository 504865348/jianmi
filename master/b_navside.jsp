<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<a href="/jzme.jsp" class="list-group-item">首页</a>
<a href="/business/business.jsp" class="list-group-item">发布兼职</a>
<a href="/business/binformation.jsp" class="list-group-item">商家信息</a>
<a href="/business/bchange.jsp" class="list-group-item">修改资料</a>
<a href="/business/bchangepassword.jsp" class="list-group-item">修改密码</a>
<a href="/ListJobServlet?id=2&pNum=1" class="list-group-item">查看兼职</a>
<a href="/BJobServlet?pNum=1" class="list-group-item">兼职信息</a>
<a href="/ListCommentServlet?id=2&pNum=1&bid=${loginBusiness.bid}" class="list-group-item">我的评论</a>
<a href="/invalidate.jsp" class="list-group-item">注销</a>
