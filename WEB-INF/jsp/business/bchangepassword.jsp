<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                    <link href="css/user.css" rel="stylesheet">
                    <link href="images/jzme.ico" rel="shortcut icon" type="image/x-icon" />
                    <script src="bootstrap/js/jquery.js"></script>
                    <script src="bootstrap/js/bootstrap.js"></script>
                    <title>修改密码</title>
                </head>

                <body>
                    <script type="text/javascript">
                        function checkForm() {
                            var spanpassword = $("#spanpassword").text();
                            var spanrepassword = $("#spanrepassword").text();
                            if (spanpassword != "√ 新密码合格") {
                                document.getElementById("spanpasscode").innerHTML = "<font color='red'>× 密码长度不能小于6位，大于30位</font>";
                                return false;
                            }
                            if (spanrepassword != "√ 再次输入密码合格") {
                                document.getElementById("spanrepasscode").innerHTML = "<font color='red'>× 两次密码输入必须一致</font>";
                                return false;
                            }
                        }

                        function checkpassword() {
                            var password = document.getElementById("password").value;
                            if (password.length < 6 || password.length > 30) {
                                document.getElementById("spanpassword").innerHTML = "<font color='red'>× 密码长度不能小于6位，大于30位</font>";
                                return false;
                            } else {
                                document.getElementById("spanpassword").innerHTML = "<font color='green'>√ 新密码合格</font>";
                                return true;
                            }
                        }

                        function checkrepassword() {
                            var password = document.getElementById("password").value;
                            var repassword = document.getElementById("repassword").value;
                            if (password != repassword) {
                                document.getElementById("spanrepassword").innerHTML = "<font color='red'>× 两次密码输入必须一致</font>";
                                return false;
                            } else {
                                document.getElementById("spanrepassword").innerHTML = "<font color='green'>√ 再次输入密码合格</font>";
                                return true;
                            }
                        }
                    </script>
                    <c:if test="${empty loginBusiness}">
                        <!-- 	<script>alert('您还没有登录!');window.location.href="/business/businesslogin.jsp";</script>
	 -->
                    </c:if>

                    <jsp:include page="../master/b_top.jsp" />
                    <div class="wrap center-block">
                        <!-- article -->
                        <div class="list-group width-2 pull-left">
                            <jsp:include page="../master/b_navside.jsp" />
                        </div>
                        <div class="width-10 pull-right" style="background: #fff;">
                            <c:if test="${not  empty business }">
                                <form:form action="bchangepassword2BB" method="post" onSubmit="return checkForm()">
                                    <table class="width-9 center-block padding-top-lg cp_table">
                                        <tr class="" style="dispaly: block; margin-bottom: 10px;">
                                            <td class="width-2 cp_span">新密码：</td>
                                            <td class="width-4"><input type="password" name="password" class="jz_input" id="password" onblur="checkpassword()"></td>
                                            <td class="width-5"><span id="spanpassword"></span></td>
                                        </tr>
                                        <tr style="dispaly: block; margin-bottom: 10px;">
                                            <td class="width-2">重复新密码：</td>
                                            <td class="width-4"><input type="password" name="repassword" class="jz_input" id="repassword" onblur="checkrepassword()"></td>
                                            <td class="width-5"><span id="spanrepassword"></span></td>
                                        </tr>

                                        <tr>
                                            <td colspan="3"><input class="btn btn-success width-4 margin-top-lg" type="submit" value="提交"></td>
                                        </tr>
                                    </table>
                                </form:form>
                            </c:if>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <jsp:include page="../master/b_foot.jsp" />
                </body>

                </html>