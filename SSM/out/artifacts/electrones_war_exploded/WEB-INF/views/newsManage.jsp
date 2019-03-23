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
        <a class="navbar-brand" href="#">新闻管理中心</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">主页 <span class="sr-only">(current)</span></a>
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
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="输入你想搜索的" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
            </form>
        </div>
    </nav>

    <!-- 按钮 -->
    <div class="row">
        <div class="col-md-2 offset-md-10">
            <a href="<%=path%>/newsInput" id="creatNews" class="btn btn-primary">新增</a>
            <button id="deleteNews"  class="btn btn-danger">删除</button>
        </div>
    </div>

    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">

            <table class="table table-hover">
                <thead>
                <tr>
                    <th>标题</th>
                    <th>发布单位</th>
                    <th>发布时间</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${pageInfo.list}" var="news">
                    <tr>
                        <td><a href="<%=path%>/news/${news.id}">${news.title}</a></td>
                        <td>${news.author}</td>
                        <td><fmt:formatDate value="${news.publishtime}" type="date" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                        <td>
                            <button id="editBtn" class="btn-primary" >
                                <span class="glyphicon glyphicon-pencil" value="${news.id}" aria-hidden="true">编辑</span>
                                    <%--<span class="glyphicon glyphicon-star" aria-hidden="true"></span> Star--%>
                            </button>

                            <button id="deleleBtn" class="btn-danger" >
                                <span class="glyphicon glyphicon-trash" aria-hidden="true">删除</span>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </div>
    </div>

    <!-- 显示分页信息 -->
    <div class="row">
        <!--分页文字信息  -->
        <div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
            页,总 ${pageInfo.total } 条新闻</div>
        <!-- 分页条信息 -->
        <div class="col-md-6">

            <nav aria-label="pageNavigation">
                <ul class="pagination">
                    <c:if test="${pageInfo.hasPreviousPage }">
                        <li class="page-item ">
                            <a class="page-link" href="<%=path%>/news?pn=${pageInfo.pageNum-1}&isManager=true">前一页</a>
                        </li>
                    </c:if>

                    <c:forEach items="${pageInfo.navigatepageNums}" var="pageNum">

                        <c:if test="${pageNum == pageInfo.pageNum}">
                            <li class="page-item active">  <a class="page-link" href="#">${pageNum}</a>  </li>
                        </c:if>

                        <c:if test="${pageNum != pageInfo.pageNum}">
                            <li class="page-item ">  <a class="page-link" href="<%=path%>/news?pn=${pageNum}&isManager=true">${pageNum}</a> </li>
                        </c:if>


                    </c:forEach>

                    <c:if test="${pageInfo.hasNextPage }">
                        <li class="page-item">
                            <a class="page-link" href="<%=path%>/news?pn=${pageInfo.pageNum+1}&isManager=true">后一页</a>
                        </li>
                    </c:if>

                </ul>
            </nav>

        </div>

    </div>


    <!-- 静态模态框,显示编辑新闻 -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">新闻编辑</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <%--模态框的表格.也是主题部分--%>
                    <div class="modal-body">
                        <form action="<%=path%>/news" method="post">
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
                                <input name="picturepath" type="file" class="form-control-file" id="exampleFormControlFile1">
                            </div>
                            <%--前端获取作者的名字,然后直接传进去--%>
                            <input name="author" type="hidden" value="怪你元">
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                        <button id="saveBtn" type="button" class="btn btn-primary">保存</button>
                    </div>
                </div>
            </div>
        </div>
</div>

<script>
    $("#editBtn").click(function (){
        $("#myModal").modal({
            backdrop:"static",
            focus:true
        });
    });

</script>
</body>
</html>