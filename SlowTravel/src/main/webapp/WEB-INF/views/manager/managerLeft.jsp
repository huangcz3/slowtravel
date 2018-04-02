<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/28
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" type="text/css" href="<%=path%>/staticState/css/managerLeft.css"/>
<body>
<div class="dropdown">
    <button type="button"  class="btn dropdown-toggle left_butt" id="dropdownMenu0" data-toggle="dropdown">
        我的资料
    </button>
    <ul class="dropdown-menu left_ul"  aria-labelledby="dropdownMenu0">
        <li class="left_li">
            <a tabindex="-1" href="<%=path%>/manager/userInfo" target="managerRight">个人信息显示</a>
        </li>
        <li class="left_li">
            <a tabindex="-1" href="<%=path%>/manager/goUpdateUserInfo" target="managerRight">修改个人信息</a>
        </li>
    </ul>
</div>

<div class="dropdown">
    <button type="button"  class="btn dropdown-toggle left_butt" id="dropdownMenu1" data-toggle="dropdown">
        游记管理
    </button>
    <ul class="dropdown-menu left_ul"  aria-labelledby="dropdownMenu1">
        <li class="left_li">
            <a tabindex="-1" href="<%=path%>/manager/travelsManager" target="managerRight">游记列表</a>
        </li>
    </ul>
</div>


<div class="dropdown">
    <button type="button"  class="btn dropdown-toggle left_butt" id="dropdownMenu4" data-toggle="dropdown">
        权限管理
    </button>
    <ul class="dropdown-menu left_ul"  aria-labelledby="dropdownMenu4">
        <li class="left_li">
            <a tabindex="-1" href="<%=path%>/role/findAllSt_user" target="managerRight">后台用户列表</a>
        </li>
    </ul>
</div>

<div class="dropdown">
    <button type="button"  class="btn dropdown-toggle left_butt" id="dropdownMenu5" data-toggle="dropdown">
        回收站
    </button>
    <ul class="dropdown-menu left_ul"  aria-labelledby="dropdownMenu5">
        <c:if test="${st_user.role_id == 1}">
            <li class="left_li">
                <a tabindex="-1" href="<%=path%>/delete/goTravelDelete" target="managerRight">删除游记信息列表</a>
            </li>
        </c:if>
        <c:if test="${st_user.role_id <= 2}">
        <li class="left_li">
            <a tabindex="-1" href="<%=path%>/delete/goDeletePicture" target="managerRight">删除图片信息列表</a>
        </li>
        </c:if>
        <li class="left_li">
            <a tabindex="-1" href="<%=path%>/delete/goDeleteComment" target="managerRight">删除消息信息列表</a>
        </li>
    </ul>
</div>

</body>
</html>
