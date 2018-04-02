<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: helei
  Date: 2017/6/18
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="mainDiv" class="mainDiv">
    <div class="leftDiv">
        <div><a href="<%=path%>/st_user/HOME_PAGE"><img src="<%=path%>/staticState/img/LOGO1.png"></a></div>
        <div><a href="<%=path%>/st_user/goHot" class="leftA hoverDiv">热门游记</a></div>
        <div><a href="<%=path%>/dest/destHp" class="leftA hoverDiv">目的地</a></div>
        <c:if test="${st_user.photo != null}">
        <div><a href="<%=path%>/myHomePage/goMyHomePage" class="leftA hoverDiv">我的首页</a></div>
        </c:if>
        <div><a href="<%=path%>/st_user/goJoinUs" class="leftA hoverDiv">加入我们</a></div>
    </div>
    <div class="rightDiv">
        <form class="select_form" action="<%=path%>/st_user/goSearch" method="post">
            <div class="selectDiv">
                <input class="select" placeholder="搜索游记"  name="search">
            </div>
        </form>
        <c:if test="${empty st_user.photo}">
            <div class="rightWords">
                <div class="rightA rightW"><a class="hoverA" href="<%=path%>/st_user/goRegister">注册</a></div>
                <div class="rightW"><a class="hoverA" data-toggle="modal" data-target="#myModal">登录</a></div>
            </div>
        </c:if>
        <c:if test="${st_user.photo != null}">
            <div class="head">
                <!--nav-->
                <div class="nav">
                    <!--导航条-->
                    <ul class="nav-main">
                        <li id="li-1"><img class="photo"
                                           src="<%=path%>${st_user.photo}">&nbsp;&nbsp;${st_user.username}<span></span>
                        </li>
                    </ul>
                    <!--隐藏盒子-->
                    <div id="box-1" class="hidden-box hidden-loc-us">
                        <ul class="box_ul">
                            <li><a href="<%=path%>/myHomePage/goAddUpLoad" class="hidden-a">创建游记</a></li>
                            <li><a href="<%=path%>/myHomePage/goMyHomePage" class="hidden-a">我的首页</a></li>

                            <li><a href="<%=path%>/st_user/Action?id=${st_user.id}" class="hidden-a">用户信息</a></li>

                            <li><a href="<%=path%>/dest/destHp" class="hidden-a">目的地</a></li>
                            <c:if test="${st_user.role_id == 4}">
                                <li><a href="<%=path%>/st_user/goJoinUs" class="hidden-a">加入我们</a></li>
                            </c:if>
                            <c:if test="${st_user.role_id != 4}">
                                <li><a href="<%=path%>/manager/goManagerHomePage" class="hidden-a">管理员页面</a></li>
                            </c:if>
                            <li><a href="<%=path%>/role/quit" class="hidden-a">退出</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </c:if>
    </div>
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">
                    <div class="top">登录</div>
                    <div class="top" id="register"><a href="<%=path%>/st_user/register">注册</a></div>
                </h4>
            </div>
            <form action="<%=path%>/st_user/login" method="post">
                <div class="modal-body">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">账&nbsp;&nbsp;&nbsp;号</span>
                        <input type="text" id="username" name="username" class="form-control" placeholder="请输入账号">
                    </div>
                    <br>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;码</span>
                        <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码">
                    </div>
                    <br>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">验证码</span>
                        <input type="text" id="inp_code" class="form-control" placeholder="请输入验证码">
                        <span class="input-group-addon" id="code"></span>
                    </div>
                    <br>
                    <div class="input-group input-group-lg myInput">
                        <span id="sp5"></span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" id="butt" disabled="disabled" class="btn btn-primary">立即登录</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
