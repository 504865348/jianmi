<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<div class="list-group">
	<a href="AdminAddbusinessBB" class="list-group-item">首页</a>
	<a href="AdminAddbusinessBB" class="list-group-item">发布兼职</a>
	<a href="binformationBB" class="list-group-item">商家信息</a>
	<a href="bchangeBB" class="list-group-item">修改资料</a>
	<a href="bchangepasswordBB" class="list-group-item">修改密码</a>
	<a href="listjobBB?currentIndex=0&&jianGe=3" class="list-group-item">查看兼职</a>
	<a href="jobinformationBB?currentIndex=0&&bid=1" class="list-group-item">兼职信息</a>
	<a href="getBusinessCommentBB?bid=${business.bid}&&currentIndex=0&&jianGe=3" class="list-group-item">我的评论</a>
	<a href="logoutBB" class="list-group-item">注销</a>
</div>