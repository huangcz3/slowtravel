<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: duyuxiang
  Date: 2017/6/19
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../../common/lib.jsp"  %>
<html>
<head>
    <title>-目的地-图片</title>
    <link rel="stylesheet" href="<%=path%>/staticState/css/destinationImg.css"/>
    <link rel="stylesheet" href="<%=path%>/staticState/css/publicDestination.css"/>

</head>
<body>

<div class="bigPage">
    <div class="biaoti">精彩图片</div>
    <c:forEach items="${destImg}" var="destinationImg">
        <%--图片模块--%>
        <div class="imgModel">
            <img class="desImg" src="<%=path%>/staticState/img/${destinationImg.url}"/>
            <p class="desImgLike"><span class="glyphicon glyphicon-heart desImgIcon"> </span> <span class="desImgNum">${destinationImg.praise}</span></p>
        </div>
    </c:forEach>


    <div class="LoadMore"><a id="loads" onclick="LoadMore(${destId})">加载更多</a></div>
    <div class="decc"></div>

</div>


<script type="text/javascript" src="<%=path%>/staticState/js/destinationPublic.js"> </script>
</body>
</html>
