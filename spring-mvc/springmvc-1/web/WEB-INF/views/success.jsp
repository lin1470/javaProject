<%--
  Created by IntelliJ IDEA.
  User: bruce
  Date: 19-3-14
  Time: 下午3:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>success</title>
</head>
<body>
<h1>success</h1>
<%--<h2>${msg}</h2>--%>

time: ${requestScope.time}
<%--tiem: ${requestScope.time}--%>
names: ${requestScope.names}

request user: ${requestScope.user}
<br> <br>
session user: ${sessionScope.user}
<br> <br>
request user: ${requestScope.school}
<br> <br>
session user: ${sessionScope.school}
</body>
</html>
