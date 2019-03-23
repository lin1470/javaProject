<%@ page import="com.ascent.bean.Usr" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>新闻管理</title>
    <%
        String path = request.getContextPath();
//        Usr user = new Usr("admin","挂你元");

    %>
    <script type="text/javascript"
            src="<%=path%>/static/js/jquery-3.3.1.min.js"></script>
    <link href="<%=path%>/static/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet">

    <script
            src="<%=path%>/static/bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 搭建显示页面 -->
<div class="container">
    <%--导航页面--%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">新闻编辑</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<%=path%>/">主页 <span class="sr-only">(current)</span></a>
                </li>
                <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="<%=path%>/news?isManager=true">管理中心</a>--%>
                <%--</li>--%>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">你喜欢</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown03">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="d-lg-table-row">
        <form action="<%=path%>/news" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="exampleFormControlInput1">标题</label>
                <input name="title" type="text" class="form-control" id="exampleFormControlInput1" placeholder="请输入标题">
            </div>

            <div class="form-group-lg">
                <label for="exampleFormControlTextarea1">内容</label>
                <textarea  name="content" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label for="exampleFormControlFile1">选择要上传的文件</label>
                <input name="file" type="file" class="form-control-file" id="exampleFormControlFile1">
            </div>
            <%--前端获取作者的名字,然后直接传进去--%>
                <input name="author" type="hidden" value="怪你元">
            <button type="submit" class="btn btn-primary">确定</button>
        </form>
    </div>



</div>

</body>
</html>