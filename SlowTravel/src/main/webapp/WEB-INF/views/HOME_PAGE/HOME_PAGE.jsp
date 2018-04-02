<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp" %>
<html>
<head>
    <title>慢旅行</title>
    <link rel="stylesheet" href="<%=path%>/staticState/css/HOME_PAGE.css">
    <link rel="stylesheet" href="<%=path%>/staticState/css/hot.css">
    <link rel="stylesheet" href="<%=path%>/staticState/css/master.css">
    <link rel="stylesheet" href="<%=path%>/staticState/css/bottom.css">
    <link rel="stylesheet" href="<%=path%>/staticState/css/destinationImg.css"/>
    <link rel="stylesheet" href="<%=path%>/staticState/css/publicDestination.css"/>
    <script src="<%=path%>/staticState/js/HOME_PAGE.js"></script>
</head>
<body>
<%@include file="../Title/Title.jsp" %>
<div class="row topDiv">
    <div id="circleContent" class="carousel slide">
        <div class="carousel-inner">
            <div class="item active">
                <img class="itemImg" src="<%=path%>/staticState/img/bg0.jpg">
            </div>
            <div class="item">
                <img class="itemImg" src="<%=path%>/staticState/img/bg1.jpg">
            </div>
            <div class="item">
                <img class="itemImg" src="<%=path%>/staticState/img/bg2.jpg">
            </div>
        </div>
        <a class="left_button check-a" href="#circleContent" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right_button check-a" href="#circleContent" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
    <p class="mid-text">记录分享<br>旅途中的点点滴滴</p>
    <c:if test="${!empty st_user.photo}">
        <div class="editDiv"><a href="<%=path%>/myHomePage/goAddUpLoad" class="edit">编写游记</a></div>
    </c:if>
    <c:if test="${empty st_user.photo}">
        <div class="editDiv"><a data-toggle="modal" data-target="#myModal" class="edit">编写游记</a></div>
    </c:if>
    <form action="<%=path%>/st_user/goSearch" method="post">
        <div class="mid-select-without">
            <div class="mid-select"><input class="mid-select-input" placeholder="看看其他人的游记" name="search"></div>
        </div>
    </form>
</div>
<div class="row">
    <!-- 热门游记 -->
    <div class="col-md-10 col-md-offset-1 mid">
        <h2>热门游记</h2>
        <div class="tabs">
            <c:forEach items="${hotTravels}" var="travels">
                <div class="tabs_f1">
                    <div class="tabs_img">
                        <a href="<%=path%>/travels/travelsShow?tid=${travels.travels.id}"><img src="<%=path%>/staticState/img/${travels.picture.url}" class="tabs_img_icon"></a>
                    </div>
                    <div class="quanbu">
                        <div class="tabs_name">
                            <a href="<%=path%>/travels/travelsShow?tid=${travels.travels.id}" class="tabs_name_a">${travels.travels.t_name}</a>
                        </div>
                        <div class="tabs_name_info">
                            <a href="<%=path%>/travels/travelsShow?tid=${travels.travels.id}" class="tabs_name_info_a">
                                <img src="<%=path%>${travels.st_user.photo}" class="img_logo"></a>
                            <p class="summary">
                                <span>${travels.travels.calendar}</span>
                                <span>7天</span>
                                <span>${travels.travels.hot}次浏览</span>
                            </p>
                            <p class="summary_bottom">${travels.travels.local}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="col-md-10 col-md-offset-1 midHotScenics">
        <h2>目的地</h2>
        <div class="hotScenics">
            <%--热门景点模块--%>
            <c:forEach items="${hotDest}" var="dest">
                <a href="<%=path%>/dest/destSf?destDeta=${dest.id}">
                    <div class="desSetModel" style="width: 23%;">
                        <div class="desSetImgDiv">
                            <img class="desSetImg" src="<%=path%>/staticState/img/${dest.photo}" style="border-radius: 12px"/>
                            <h3 class="desSetName">${dest.city_name}</h3>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
    <div class="col-md-10 col-md-offset-1 mid_master">
        <h2>达人</h2>
        <div class="container_body">
            <div class="container">
                <div class="waterfall">
                    <c:forEach items="${hotMaster}" var="master">
                        <div class="item_master">
                                <%--头像--%>
                            <div class="item_master_pr">
                                <div class="item_master_pr_img">
                                    <img src="<%=path%>${master.st_user.photo}" class="item_master_pr_img_tou">
                                </div>
                                <div class="item_master_name">
                                    <a href="<%=path%>/travels/travelsShow?tid=${master.travels.id}" class="item_master_name_a"><h6>${master.st_user.username}</h6></a>
                                </div>
                                <div class="item_master_name_h6">
                                    <div class="item_master_name_desc">
                                        <h6 class="item_master_name_a_h6">在&nbsp;<a href="<%=path%>/travels/travelsShow?tid=${master.travels.id}"
                                                                                    class="item_master_name_a">${master.travels.t_name}</a>途中添加了照片
                                        </h6>
                                    </div>
                                </div>
                                <div class="item_master_time">
                                    <span>12小时前</span>
                                </div>
                            </div>
                                <%--中间照片--%>
                            <a href="<%=path%>/travels/travelsShow?tid=${master.travels.id}"><div class="item_master_body">
                                <img src="<%=path%>/staticState/img/${master.picture.url}">
                            </div></a>
                            <div class="item_master_text">
                                <a href="<%=path%>/travels/travelsShow?tid=${master.travels.id}" class="item_master_text_a"><h6 style="font-weight: inherit">
                                        ${master.picture.exp}
                                </h6></a>
                            </div>
                            <div class="item_master_info">
                                <div class="item_master_info_cb">
                                    <c:if test="${st_user.photo!=null}">
                                        <a onclick="likeCount(this,${master.picture.id},${st_user.id})" class="item_master_text_a">
                                            <div class="icon_f1"></div>
                                            <span class="icon_f2">${master.like}</span>
                                        </a>
                                    </c:if>
                                    <c:if test="${st_user.photo==null}">
                                        <a data-toggle="modal" data-target="#myModal" class="item_master_text_a">
                                            <div class="icon_f1"></div>
                                            <span class="icon_f2">${master.like}</span>
                                        </a>
                                    </c:if>
                                </div>
                                <div class="item_master_info_right">
                                    <a href="<%=path%>/travels/travelsShow?tid=${master.travels.id}" class="item_master_text_a">
                                        <div class="icon_d1">
                                            <span class="icon_d2">${master.message}</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <div id="master_load" class="col-md-1 col-md-offset-5 master_load"><a class="master_load_a" onclick="lazyLoad(${st_user.id})">载入更多</a></div>
    <div class="col-md-12 mid_bottom">
        <%@include file="../bottom/bottom.jsp" %>
    </div>
</div>
</body>
</html>
