<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Navbar Template for Bootstrap</title>

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

<!-- Button trigger modal -->
<button type="button" id="editBtn" class="btn btn-primary" data-toggle="modal">
    编辑
</button>

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
</body>
<script>
    $("#editBtn").click(function (){
        $("#myModal").modal({
            backdrop:"static",
            focus:true
        });
    });
</script>
</html>
