<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/16
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/staticState/css/register.css"/>
    <script type="text/javascript" src="<%=path%>/staticState/js/jquery-1.9.0.js"></script>
</head>
<body>
<div class="registerTop">
    <%@include file="../Title/Title.jsp" %>
</div>
<div class="container-fluid">
    <div class="col-md-3"></div>

    <div class="col-md-6" id="big">

        <div class="col-md-7" id="big1">
            <div class="row" id="big1_1">
                <p id="p1">创建您的账户</p>
            </div>
            <div class="row" id="big1_2">
                <div class="col-md-12" id="big1_3"></div>
                <div class="col-md-10" id="big1_2_1">
                    <div class="col-md-12" id="big1_2_1_1">
                        <form action="<%=path%>/st_user/register" onsubmit="return user_register()" method="post">
                            <div class="row" id="big1_2_1_1_1">
                                <p id="p2">创建账户</p>
                                <a id="a1" href="<%=path%>/st_user/HOME_PAGE">登录</a>
                            </div>
                            <div class="row" id="big1_2_1_1_2">
                                <label>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号 ：</label>
                                <input id="inp1" type="text" name="username" placeholder="请输入6-18位账号"><br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="sp" id="sp1"></span>
                            </div>
                            <br>
                            <div class="row">
                                <label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码 ：</label>
                                <input id="inp2" type="password" placeholder="请输入密码"><br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="sp" id="sp2"></span>
                            </div>
                            <br>
                            <div class="row">
                                <label>确认密码 ：</label>
                                <input id="inp4" type="password" name="password" placeholder="请再次输入密码"><br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="sp" id="sp4"></span>
                            </div>
                            <br>
                            <div class="row">
                                <label>验&nbsp;&nbsp;证&nbsp;&nbsp;码 ：</label>
                                <input id="inp3" class="inpCode" onkeyup="codeChange()" type="text" name="identify" placeholder="请输入验证码">
                                <div id="big1_2_1_1_2_1"><p id="p3"></p></div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span class="sp" id="sp3"></span>
                            </div>
                            <br>
                            <div class="row" id="big1_2_1_1_3">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <button id="butt" class="buttDis" type="submit">确认注册</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <div class="col-md-5" id="big2">
            <h1>广告位招租</h1>
        </div>
    </div>

    <div class="col-md-3"></div>
</div>
<script type="text/javascript" src="<%=path%>/staticState/js/register.js"></script>
<div class="mid_bottom">
    <%@include file="../bottom/bottom.jsp" %>
</div>
</body>
</html>
