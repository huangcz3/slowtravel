<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/28
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp"%>
<html>
<head>
    <title></title>
</head>
<body style="background-color: #4abdcc;">
    <div style="width:100%;text-align: center;color: white"><h1>慢旅行后台管理系统</h1></div>
    <div class="col-lg-12" style="text-align: right">
        &nbsp;&nbsp; &nbsp;&nbsp;
        <img src="<%=path%>/staticState/img/manager_head.png">
        <span style="color: white">${st_user.username}</span>
        &nbsp;&nbsp;|&nbsp;&nbsp;
        <span><a href="<%=path%>/st_user/HOME_PAGE" class="loginOut_a" style="color: white; text-decoration: none;" target="_top">返回首页</a></span>
        &nbsp;&nbsp;|&nbsp;&nbsp;
        <span><a href="<%=path%>/role/quit" class="loginOut_a" style="color: white; text-decoration: none;" target="_top">退出登录</a></span>
    </div>
</body>
</html>
