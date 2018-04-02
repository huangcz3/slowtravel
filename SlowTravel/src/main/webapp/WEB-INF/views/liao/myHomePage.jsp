<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/22
  Time: 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp" %>
<html>
<head>
    <title>我的首页</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/staticState/css/myHomePage.css"/>
    <script type="text/javascript" src="<%=path%>/staticState/js/jquery-1.9.0.js"></script>
    <link rel="stylesheet" href="<%=path%>/staticState/css/Title.css">
</head>
<body>
<div id="top1">
    <%@include file="../Title/Title.jsp" %>
</div>
<div class="container-fluid" id="big">
    <div class="col-md-8">
        <div class="row" id="big_1">
            <div class="col-md-2">
                <div id="headImg">
                    <img class="headImg" src="<%=path%>${st_user.photo}"/>
                </div>
            </div>
            <div class="col-md-10">
                <div id="headName">
                    <div><p id="p_name">${st_user.username}</p></div>
                    <div>
                        <p id="foll" class="follow">关注&nbsp;0</p>
                        <p class="follow">粉丝&nbsp;0</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" id="butts">
            <div class="btn-toolbar">
                <div class="btn-group">
                    <button type="button" class="btn btn-default"><a class="butt_a">游记 ${fn:length(myTravels)}</a></button>
                    <button type="button" class="btn btn-default"><a class="butt_a">想去 ${fn:length(wantToGos)}</a></button>
                    <button type="button" class="btn btn-default"><a class="butt_a">喜欢 ${fn:length(myPhotosUrlAndCount)}</a></button>
                    <button type="button" class="btn btn-default"><a class="butt_a">收藏 ${collectCount}</a></button>
                </div>
            </div>
        </div>
        <div class="row" id="big_3">
            <h1>曾经的游记</h1>
            <c:forEach var="myTravels" items="${myTravels}" begin="0" end="3">
                <div class="myTravel">
                    <a href="<%=path%>/travels/travelsShow?tid=${myTravels.id}"><img class="travelImg" src="<%=path%>/staticState/img/${myTravels.url}"></a>
                    <div class="col-md-12 travel_div"><a class="travelInfo">${myTravels.t_name}</a></div>
                    <div class="col-md-12"><span>${myTravels.calendar}</span></div>
                </div>
            </c:forEach>

            <c:if test="${fn:length(myTravels) > 4}">
                <div class="col-md-12">
                    <div class="col-md-9"></div>
                    <form action="<%=path%>/st_user/goSearch" method="post">
                        <input hidden="hidden" name="search" value="${myTravels[0].username}">
                        <div class="col-md-2">
                            <button type="submit" class="row travel_more">更多</button>
                        </div>
                    </form>
                    <div class="col-md-1"></div>
                </div>
            </c:if>
        </div>
        <div class="row">
            <h1>想去的地方</h1>
            <c:forEach var="wantToGos" items="${wantToGos}" begin="0" end="5">
            <div class="wantToGo">
                <a href="#"><img class="wantToGoImg" src="<%=path%>/staticState/img/${wantToGos.photo}"></a>
                <div class="col-md-12">
                    <span class="wantInfo wantInfo1">去过&nbsp;(${wantToGos.go_number})</span>
                    <span class="wantInfo">想去&nbsp;(${wantToGos.want_number})</span>
                </div>
                <div class="col-md-12 wantToGoName">
                    <span class="country">${wantToGos.city_name}</span>
                </div>
            </div>
            </c:forEach>
            <div class="col-md-12">
                <div class="col-md-9"></div>
                <form action="#" method="post">
                    <div class="col-md-2">
                        <button type="submit" class="row travel_more">更多</button>
                    </div>
                </form>
                <div class="col-md-1"></div>
            </div>
        </div>
        <div class="row">
            <h1>喜欢的照片</h1>
            <c:forEach var="myPhotosUrlAndCount" items="${myPhotosUrlAndCount}" begin="0" end="7">
                <div class="likePhoto">
                    <a href="#"><img class="likePhotoImg" src="<%=path%>/staticState/img/${myPhotosUrlAndCount.url}"></a>
                    <div class="col-md-12 love">
                        <a href="#"><img class="user_love"
                                         src="<%=path%>/staticState/img/user_love.png">&nbsp;${myPhotosUrlAndCount.count}
                        </a>
                    </div>
                </div>
            </c:forEach>

            <div class="col-md-12">
                <div class="col-md-9"></div>
                <form action="#" method="post">
                    <div class="col-md-2">
                        <button type="submit" class="row travel_more">更多</button>
                    </div>
                </form>
                <div class="col-md-1"></div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="row addTravelBig">
            <button class="butt_addTravel"><a href="<%=path%>/myHomePage/goAddUpLoad">创建游记<img class="addTravelImg"
                                                                                               src="<%=path%>/staticState/img/user_addTravel.png"></a>
            </button>
        </div>
        <div class="row">
            <h1>旅行成就</h1>
            <div class="col-md-12 TravelAchievement">
                <div class="Achievement">
                    <span class="sp1">${fn:length(myPhotosUrlAndCount)}</span>
                    <br>
                    <span class="sp2">次喜欢</span>
                </div>
                <div class="Achievement">
                    <span class="sp1">${collectCount}</span>
                    <br>
                    <span class="sp2">次收藏</span>
                </div>
                <div class="Achievement">
                    <span class="sp1">${fn:length(wantToGos)}</span>
                    <br>
                    <span class="sp2">个想去的地方</span>
                </div>
                <div class="Achievement">
                    <span class="sp1">${fn:length(myTravels)}</span>
                    <br>
                    <span class="sp2">个国家或地区</span>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="adPosition">
                <h1>广告位招租</h1>
            </div>
        </div>
    </div>
</div>
<div class="mid_bottom">
    <%@include file="../bottom/bottom.jsp" %>
</div>
</body>
</html>
