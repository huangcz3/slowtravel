<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/28
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp"%>
<html>
<head>
    <title>慢旅行后台管理系统</title>
</head>
<frameset rows="100,90%" cols="*">
    <frameset rows="100%" cols="*" frameborder="yes" border="1" framespacing="1">
        <frame src="<%=path%>/manager/goManagerTop"/>
    </frameset>

    <frameset rows="*" cols="20%,80%" frameborder="yes" framespacing="1">
        <frame src="<%=path%>/manager/goManagerLeft"/>
        <frame src="<%=path%>/manager/goManagerRight" name="managerRight"/>
    </frameset>
</frameset>
</html>
