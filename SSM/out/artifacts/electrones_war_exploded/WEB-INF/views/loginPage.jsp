<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bruce
  Date: 19-3-20
  Time: 上午9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <%
        String path = request.getContextPath();
    %>

    <title>登录</title>
    <script type="text/javascript"
            src="<%=path%>/static/js/jquery-1.12.4.min.js"></script>
    <link
            href="<%=path%>/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <link href="<%=path%>/static/bootstrap-3.3.7-dist/css/signin.css" rel="stylesheet">
    <script
            src="<%=path%>/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<body class="text-center">
<form action="login?isLogin=true" method="post" class="form-signin">
    <img src="<%=path%>/IMAGES/logo.jpeg" width="100" height="100" class="col-md-offset-4 img-circle img-responsive">
    <h1 class="h3 mb-3 font-weight-normal">请登录</h1>
    <c:if test="${!empty requestScope.tip}">
        <div class="alert alert-danger" role="alert">${requestScope.tip}</div>
    </c:if>
    <label for="inputEmail" class="sr-only">账号</label>
    <input name="username" id="inputEmail" class="form-control" placeholder="账号" required autofocus>
    <label for="inputPassword" class="sr-only">密码</label>
    <input name="password" type="password" id="inputPassword"  class="form-control" placeholder="密码" required>
    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> 记住我
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
</form>
</body>
</html>

