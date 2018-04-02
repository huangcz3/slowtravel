<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/24
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/staticState/css/login.css"/>
    <script type="text/javascript" src="<%=path%>/staticState/js/jquery-1.9.0.js"></script>
</head>
<body style="overflow: hidden">
<div class="container-fluid">
    <!-- 按钮触发模态框 -->
    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">开始演示模态框</button>

    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">
                        <div class="top">登录</div>
                        <div class="top" id="register"><a href="<%=path%>/admin/goRegister">注册</a></div>
                    </h4>
                </div>
                <form action="<%=path%>/admin/login" method="post">
                    <div class="modal-body">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon">账&nbsp;&nbsp;&nbsp;号</span>
                            <input type="text" name="username" class="form-control" placeholder="请输入账号">
                        </div>
                        <br>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;码</span>
                            <input type="password" name="password" class="form-control" placeholder="请输入密码">
                        </div>
                        <br>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon">验证码</span>
                            <input type="text" id="inp3" class="form-control" placeholder="请输入验证码">
                            <span class="input-group-addon" id="code"></span>
                        </div>
                        <br>
                        <div class="input-group input-group-lg">
                            <span id="sp5"></span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" id="butt" class="btn btn-primary">立即登录</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="<%=path%>/staticState/js/login.js"></script>
</html>
