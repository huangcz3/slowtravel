<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/23
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>对不起！没有权限访问这个页面</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticState/css/four.css">
</head>
<body bgcolor="#494949">
<div class="head404"></div>
<div class="txtbg404">
    <div class="txtbox">
        <p>对不起！没有权限访问这个页面</p>
        <p class="paddingbox">请点击以下链接继续浏览网页</p>
        <p>》<a style="cursor:pointer" onclick="history.back()">返回上一页面</a></p>
        <p>》<a href="<%=request.getContextPath()%>/st_user/HOME_PAGE">返回网站首页</a></p>
    </div>
</div>
</body>
</html>
