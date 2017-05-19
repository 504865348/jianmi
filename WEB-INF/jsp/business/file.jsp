<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传</title>
</head>
<body>
     <form action="mangfile" method="post" enctype="multipart/form-data">
          file:<input type="file" name="file">
          file:<input type="file" name="file">
          file:<input type="file" name="file">
          desc:<input type="text" name="desc">
          <input type="submit" value="Submit"/>
     </form>
</body>
</html>