<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: duyuxiang
  Date: 2017/6/20
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../../common/lib.jsp"  %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=path%>/staticState/css/destinationImg.css"/>
    <link rel="stylesheet" href="<%=path%>/staticState/css/publicDestination.css"/>

</head>
<body>
<div class="bigPage">
    <div class="biaoti">热门住宿</div>

    <c:forEach items="${wList}" var="photo">
        <%--住宿，美食，购物，景点模块--%>
        <div class="desSetModel">
            <div class="desSetImgDiv">
                <img class="desSetImg" src="<%=path%>/staticState/img/${photo.url}"/>
                <h3 class="desSetName">${photo.place}</h3>
            </div>
            <div class="desSetInfos">
                <div class="desSetInfo">去过 <span>${photo.go_number}</span></div>
                <div  class="desSetInfo destts">想去 <span>${photo.want_number}</span></div>
            </div>
        </div>

    </c:forEach>



    <div class="LoadMore"><a id="setLoad" onclick="setLoads('${setType}',${destId},${wList.size()})" href="#">加载更多</a></div>
    <div class="decc"></div>
</div>
</body>
<script type="text/javascript" src="<%=path%>/staticState/js/destinationPublic.js"></script>
</html>
