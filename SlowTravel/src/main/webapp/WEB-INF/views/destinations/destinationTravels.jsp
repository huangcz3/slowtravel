<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/20
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../../common/lib.jsp"  %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=path%>/staticState/css/publicDestination.css"/>
    <link rel="stylesheet" href="<%=path%>/staticState/css/destinationTravel.css"/>
</head>
<body>

<div class="bigPage">
    <div class="biaoti">热门游记</div>

    <%--游记模块--%>
    <a href="#">
    <div class="desTravels">
        <div class="desTraImgDiv">
            <img class="desTraImg" src="<%=path%>/staticState/img/dyx8521.jpg"/>
            <h4 class="desTraText">从世界尽头到奈何桥 <span class="desTraText2">by 花儿种太太</span></h4>
            <h5 class="desTraText3">行程: 待定</h5>
        </div>
        <div class="desTraInfoDiv">
            <div class="desTraInfo">浏览<span class="desTraInfoNum">12345</span></div>
            <div class="desTraInfo">收藏<span class="desTraInfoNum">12345</span></div>
            <div class="desTraInfo">评论<span class="desTraInfoNum">12345</span></div>
        </div>
    </div>
    </a>




    <div class="LoadMore"><a href="#">加载更多</a></div>
    <div class="decc"></div>

</div>
</body>
</html>
