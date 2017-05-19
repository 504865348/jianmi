<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form:form   action="addAddbusiness" method="post" >
          <%--  <form:label path="usernam">username</form:label> --%>
           <label>username</label>
           <form:input path="username"/>
           <label>password</label>
         <%--   <form:label path="passwor">password</form:label> --%>
           <form:input path="password"/>
           <input type="submit" value="提交">
      </form:form>
      <%-- <form action="addAddbusiness" method="post">
           <label>username</label>
           <input type="text" name="username">
      
           <label>password</label>
           <input type="text" name="password">
           <input type="submit" value="tioa">
      </form> --%>
</body>
</html>