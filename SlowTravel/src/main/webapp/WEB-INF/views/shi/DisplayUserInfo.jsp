<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/4
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp" %>
<html>
<head>
    <title>用户详情</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/staticState/css/UserInfoJudge.css">
    <script type="text/javascript"src="<%=path%>/staticState/js/Display.js"></script>
</head>
<body>
<%@include file="../Title/Title.jsp" %>
<br/><br/><br/><br/>
<div class="col-lg-2"></div>
<div class="col-lg-8 "   id="userInfo_div">

        <div id="userInfo_div1">
            <span>性别</span>:&nbsp&nbsp
            <select title="1" id="userInfo_select2"   value="${userInfo.sex}" disabled="disabled">
                <option>男</option>
                <option>女</option>
            </select>
        </div>
        <br/><br/>
        <div id="userInfo_div2">
            <span >个人生日:&nbsp;&nbsp;</span>
            <input type="text" value="${userInfo.birthday}" disabled="disabled">
        </div>
        <br/><br/>
        <div class="input-group">
            <span>电子邮箱:&nbsp&nbsp</span>
            <input type="text"  id="userInfo_ipt"  disabled="disabled" value="${userInfo.eamil}">
            <span id="userInfo_span"></span>
        </div>
        <br/><br/>
        <div>
            <span>个人介绍</span><br/>
            <textarea class="form-control" rows="6"  id="userInfo_text"  disabled="disabled">${userInfo.introduce}</textarea>
        </div>
        <br/><br/>
    <div id="userInfo_lastDiv">
        <div>
            <a href="<%=path%>/admin/update?id=${userInfo.user_id}" class="class_a" id="userInfo_a1" hidden="hidden">修改用户信息</a>
        </div>
        <a href="<%=path%>/st_user/goModifyPassword?id=${st_user.id}" class="class_a">修改密码</a>
        <div>
            <a href="<%=path%>/admin/data?id=${userInfo.user_id}" class="class_a" id="userInfo_a2" hidden="hidden">添加用户信息</a>
        </div>

    </div>

</div>
<div class="col-lg-2"></div>

<%@include file="../bottom/bottom.jsp"%>
</body>
</html>
