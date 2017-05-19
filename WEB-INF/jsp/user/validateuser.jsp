<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="vastsum.utils.*"%>

<%
	String username = request.getParameter("username");
	if(UserManager.getInstance().findUserById(username) != null) {
		out.println("√ 手机号码输入正确");
	}
%>