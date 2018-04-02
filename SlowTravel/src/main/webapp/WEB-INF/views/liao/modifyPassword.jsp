<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/5
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp" %>
<html>
<head>
    <title>用户修改密码</title>
</head>
<body>

<%@include file="../Title/Title.jsp" %>
<br>

<div class="col-md-12" style="margin-top: 100px;margin-bottom: 50px;">
    <div class="col-md-3"></div>
    <div class="col-md-5" style="width: 600px;">
        <form action="<%=path%>/travelsPicture/modifyPassword" method="post" onsubmit="return modifyPassword()">
            <div class="modal-body">
                <input hidden="hidden" id="username" name="username" value="${st_user.username}">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">旧&nbsp;密&nbsp;码&nbsp;</span>
                    <input type="password" id="oldPassword" class="form-control" placeholder="请输入旧密码">
                </div>
                <br>
                <div class="input-group input-group-lg myInput">
                    <span class="u_sp" style="color: red"></span>
                </div>
                <br>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">新&nbsp;密&nbsp;码&nbsp;</span>
                    <input type="password" id="password1" class="form-control" placeholder="请输入新密码">
                </div>
                <br>
                <div class="input-group input-group-lg myInput">
                    <span class="u_sp" style="color: red"></span>
                </div>
                <br>
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">确认密码</span>
                    <input type="password" id="password2" name="password" class="form-control" placeholder="请再次输入新密码">
                </div>
                <br>
                <div class="input-group input-group-lg myInput">
                    <span class="u_sp" style="color: red"></span>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" id="u_butt"  class="btn btn-primary">确认修改</button>
            </div>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>
<div>
    <%@include file="../bottom/bottom.jsp" %>
</div>
<script src="<%=path%>/staticState/js/modifyPassword.js"></script>
</body>
</html>
