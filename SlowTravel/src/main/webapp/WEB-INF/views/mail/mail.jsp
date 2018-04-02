<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/21
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp" %>
<html>
<head>
    <title>查看游记</title>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <link rel="stylesheet" href="<%=path%>/staticState/css/mail.css">
    <script src="<%=path%>/staticState/js/mail.js"></script>
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=0Da809e7304b28ff044965aa744c1350"></script>
    <link rel="stylesheet" href="<%=path%>/staticState/css/bottom.css">
</head>
<body>
<%@include file="../Title/Title.jsp" %>
<br>
<br>
<br>
<br>
<%--外面最大的div--%>
<div class="center_align">
    <%--左边--%>
    <div class="center_zuo">
        <div class="center_align_left">
            <%--注册--%>
            <div class="center_align_left_register">
                <div class="center_align_zhuche">
                    <img src="<%=path%>/staticState/img/mail_zhuce.PNG" class="aaaaa">
                </div>
            </div>
            <%--隔开一个间距30px--%>
            <p style="padding-top: 30px"></p>
            <%--头像，名字，时间，浏览--%>
            <div class="center_align_left_info">
                <%--头像img--%>
                <div class="center_align_img">
                    <a href="#"><img src="<%=path%>${travelsShowById.st_user.photo}" class="center_align_img_logo"></a>
                </div>
                <%--名字,时间--%>
                <div class="center_align_date">
                    <h2 class="center_align_date_name">${travelsShowById.st_user.username}</h2>
                    <p>
                        <span>${travelsShowById.travels.calendar}</span>
                    </p>
                </div>
                <%--点赞，浏览，--%>
                <div class="center_align_zan">
                    <%--星星--%>
                    <div class="center_xingxing">
                        <a href="#" class="center_align_a">
                            <span class="center_span"></span>
                            <b class="center_b">1</b>
                        </a>
                    </div>
                    <%--消息--%>
                    <div class="center_xiaoxi">
                        <a href="#" class="center_align_a">
                            &nbsp;
                            <span class="center_align_xiaoxi">
                        </span>
                            <b class="center_b">1</b>
                        </a>
                    </div>
                    <%--转发--%>
                    <div class="center_zhuanfa">
                        <a href="#" class="center_align_a">
                            &nbsp;
                            <span class="center_align_zhuanfa">
                        </span>
                            <b class="center_b">1</b>
                        </a>
                    </div>
                </div>
            </div>
            <%--地图--%>
            <div class="left_map">
                <div class="left_map_ditu">
                    <!--map1-->
                    <div id="allmap" style="display: none"></div>
                    <!--map2-->
                    <div id="showmap"></div>
                    <div style="clear: both"></div>
                    <input type="hidden" id="inp" value="${travelsShowById.travels.local}"/>
                </div>
            </div>
            <%--发布的心情--%>
            <c:forEach items="${travelsShowById.pictures}" var="picture">
                <%--第一天--%>
                <p style="padding-top: 30px"></p>
                <div class="bbb">
                        <%--记录的图片--%>
                    <div class="left_waypoint">
                        <div class="tupian">
                            <img src="<%=path%>/staticState/img/${picture.url}" class="left_map_img">
                        </div>
                    </div>
                    <div class="left_one">
                        <p>&nbsp;&nbsp;${picture.exp}</p>
                            <%--右边的评论，喜欢，分享--%>
                        <div class="left_map_text_fn">
                            <c:if test="${st_user.photo != null}">
                                <a onclick="likeCount(this,${picture.id},${st_user.id})" class="left_map_love">喜欢(${picture.likeCount})</a>
                            </c:if>
                            <c:if test="${st_user.photo == null}">
                                <a data-toggle="modal" data-target="#myModal" class="left_map_love">喜欢(${picture.likeCount})</a>
                            </c:if>
                            <a style="cursor: pointer" class="left_map_like" onclick="getMessage(this,${picture.id},'${st_user.username}','${travelsShowById.st_user.username}');">评论(${picture.messageCount})</a>
                            <a href="#" class="left_map_ping">分享(0)</a>
                        </div>
                            <%--左边时间， 地点--%>
                        <div class="left_map_float">
                                ${picture.date}
                        </div>
                            <%--叉子--%>
                        <div class="left_map_chazi">

                        </div>
                            <%--地区--%>
                        <div class="left_map_diqu">
                                ${picture.place}
                        </div>
                    </div>
                        <%--用户评论--%>
                    <div class="left_pinglun">
                        <input class="message_input" type="text" placeholder="添加回复" value="" name="content"><c:if
                            test="${st_user.photo!=null}"><input class="message_button" type="button"
                                                                    value="评论" onclick="sendMessage(this,'${picture.id}','${st_user.username}','${travelsShowById.st_user.username}')"></c:if><c:if
                            test="${st_user.photo==null}"><input class="message_button" type="button" value="请登录"
                                                                    data-toggle="modal" data-target="#myModal"></c:if>
                        <hr class="message_hr">
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <%--右边--%>
    <div class="center_you">
    </div>
    <div class="center_guanggao">
        <img src="<%=path%>/staticState/img/mail_guanggao.PNG">
    </div>
    <div class="center_align_guanggao">
        <img src="<%=path%>/staticState/img/mail_guanggao1.PNG">
    </div>
    <%--底部--%>
</div>
<%--底部--%>
<%@include file="../bottom/bottom.jsp" %>
</body>
</html>
