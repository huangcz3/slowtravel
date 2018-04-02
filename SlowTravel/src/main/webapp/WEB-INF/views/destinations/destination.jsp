<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
 Created by IntelliJ IDEA.
  User: duyuxiang
  Date: 2017/6/16
  Time: 10:35
  To change this template use File | Settings | File Templates.
  --%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../../common/lib.jsp" %>

<html>
<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">

   <link rel="stylesheet" type="text/css" href="<%=path%>/staticState/css/destination.css">

    <title>目的地-慢旅行</title>

</head>
<body>
<%@include file="../Title/Title.jsp" %>
<br>
<br>
<br>
<br>
<div class="row">

     <%--正文--%>
    <div style="min-width: 700px;" class="col-md-6 col-md-offset-2 spacing ">

   <%--top轮播--%>
    <div id="myCarousel" class="carousel slide ">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>
    <!--     轮播（Carousel）-->
        <div class="carousel-inner">
            <div class="item active">
                <img style="width: 640px;height: 320px;"  src="<%=path%>/staticState/img/${dest.get(0).photo}" alt="First slide">
            </div>
            <div class="item">
                <img style="width: 640px;height: 320px;" src="<%=path%>/staticState/img/${dest.get(1).photo}" alt="Second slide">
            </div>
        </div>
    </div>
<%--轮播end--%>

        <div class="spacing">

            <div class="category  localoption1">
                <div class="local localback1">
                    <h2 class="optionfont">国内</h2>

                </div>

            </div>

            <div class="category localoption2">
                <div class="local localback2">

                    <h4 class="optionfont">国际</h4>
                    <h4 class="optionfont">港澳台</h4>
                </div>

            </div>
        </div>

        <div class="spacing  hotlocal">
            <div class="hotLocalIcon"><span class="glyphicon glyphicon-plane hotIcon"></span></div>
            <span class="hotLocalText">热门目的地</span>
        </div>

        <div style="width: 100%;height: 20px;" class="seize"></div>
        <div class="hotLocals">

            <c:forEach items="${dest}" var="destination">
            <!--目的地模块-->
                <a href="<%=path%>/dest/destSf?destDeta=${destination.id}">
        <div class="hotLocalShow">

<img class="localImg" src="<%=path%>/staticState/img/${destination.photo}"/>
<div class="localInfo">
</div>
            <div class="localInfo2">
                <h5>${destination.city_name}</h5>
                <h6>${destination.hot}人喜欢这里</h6>
                </div>
        </div>
                </a>
            </c:forEach>
        </div>


    </div>



<%--;right正文--%>
    <div style="background: #f5f3f2;height: 350px;" class=" col-md-2 spacing">
        <p></p>
<p><span class="glyphicon glyphicon-tree-deciduous"></span> 热门地点</p>

<c:forEach items="${dest}" var="destination" varStatus="status">
<div class="hotLocalMenu">
    <div class="hotLocalMenuNum">${status.index+1}</div>
    <span class="hotlocalMenuText">${destination.city_name}</span>
</div>
</c:forEach>


    </div>
</div>

</body>
<script type="text/javascript" src="<%=path%>/staticState/js/destination.js"></script>
</html>
