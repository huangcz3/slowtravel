<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 刘德华
  Date: 2017/6/19
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticState/css/hot.css">
</head>
<body>
<%@include file="../Title/Title.jsp" %>
<br>
<br>
<br>
<br>
<div class="tabs">
<h1>热门游记</h1>
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
</body>
</html>