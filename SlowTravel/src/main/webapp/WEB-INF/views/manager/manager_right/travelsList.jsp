<%@ page import="java.net.URLDecoder" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/28
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../../common/lib.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    table {
        margin: 10px 10px 10px 10px;
    }

    th {
        width: 135px;
        background-color: gainsboro;
        text-align: center;
        border: 1px solid black;
    }

    td {
        width: 135px;
        text-align: center;
    }

    a {
        font-weight: bold;
        color: black;
    }

    .form-control {
        margin-top: 5px;
        width: 500px;
        font-size: 20px;
    }

    .page_number {
        float: left;
        margin-left: 20px;
    }

    .page_ul {
        margin-left: 90px;
    }
</style>

<body>
<div class="col-lg-12" style="margin: 10px 10px 10px 10px;">
    <form action="<%=path%>/manager/searchTravels" method="post">
        <div class="form-group">
            <input type="text" name="t_name" class="form-control"
                   placeholder="请输入游记信息">
            <input type="text" name="local" class="form-control"
                   placeholder="请输入游记地点">
            <input type="text" name="username" class="form-control"
                   placeholder="请输入游记所属人">
        </div>
        <button type="submit" class="btn btn-default"
                style="width: 80px;background-color: #4abdcc;color: white;border: none;">搜索
        </button>
    </form>
</div>
<div class="col-lg-12">
    <table border="2">
        <tr>
            <th>游记ID</th>
            <th>游记名称</th>
            <th>游记热度</th>
            <th>上传游记时间</th>
            <th>游记地点</th>
            <th>游记所属人</th>
            <th>所属人角色ID</th>
            <th>游记操作</th>
        </tr>

        <c:forEach var="travelsList" items="${pageModel.datas}" begin="0" end="9">
            <tr>
                <td>${travelsList.id}</td>
                <td>${travelsList.t_name}</td>
                <td>${travelsList.hot}</td>
                <td>${travelsList.calendar}</td>
                <td>${travelsList.local}</td>
                <td>${travelsList.username}</td>
                <td>${travelsList.role_id}</td>
                <td>
                    <form style="float: left;margin-left: 20px" action="<%=path%>/manager/goUpdateTravels" method="post">
                        <input hidden="hidden" name="id" value="${travelsList.id}">
                        <input hidden="hidden" name="t_name" value="${travelsList.t_name}">
                        <input hidden="hidden" name="hot" value="${travelsList.hot}">
                        <input hidden="hidden" name="local" value="${travelsList.local}">
                        <button type="submit">修改</button>
                    </form>
                    <form style="float: left;margin-left: 10px" onsubmit="return checkDelete()" action="<%=path%>/manager/logicDeleteTravels" method="post">
                        <input hidden="hidden" name="travelsId" value="${travelsList.id}">
                        <button type="submit">删除</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<c:if test="${pageModel.pageCount > 1}">
    <div class="col-lg-12">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="page_number">当前页面 ：第&nbsp;&nbsp;${pageModel.pageNo}&nbsp;&nbsp; 页</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="page_number">共&nbsp;&nbsp;${pageModel.pageCount}&nbsp;&nbsp; 页</span>
        <form class="page_number" onsubmit="return cheackPage()" action="<%=path%>/manager/travelsManager">
            <input style="width: 30px" type="text" id="pageNo_inp" name="pageNo">
            <input hidden="hidden" id="pageNo_hid" value="${pageModel.pageCount}">
            <button id="pageNo_but" type="submit">跳转</button>
            <span id="pageNo_sp" style="color: red"></span>
        </form>
    </div>

    <div class="col-lg-12" style="text-align: left">
        <ul class="pagination page_ul">
            <c:if test="${pageModel.pageNo > 1}">
                <c:choose>
                    <c:when test="${!empty travelsList}">
                        <li>
                            <a href="JavaScript:location.href='<%=path%>/manager/searchTravels?pageNo=1&t_name='+encodeURI(encodeURI('${t_name}'))+'&local='+encodeURI(encodeURI('${local}'))+'&username='+encodeURI(encodeURI('${username}'));">首&nbsp;&nbsp;&nbsp;页</a>
                        </li>
                        <li>
                            <a href="JavaScript:location.href='<%=path%>/manager/searchTravels?pageNo=${pageModel.pageNo - 1}&t_name='+encodeURI(encodeURI('${t_name}'))+'&local='+encodeURI(encodeURI('${local}'))+'&username='+encodeURI(encodeURI('${username}'));">上一页</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="<%=path%>/manager/travelsManager?pageNo=1">首&nbsp;&nbsp;&nbsp;页</a></li>
                        <li><a href="<%=path%>/manager/travelsManager?pageNo=${pageModel.pageNo - 1}">上一页</a></li>
                    </c:otherwise>
                </c:choose>
            </c:if>
            <c:if test="${pageModel.pageNo < pageModel.pageCount}">
                <c:choose>
                    <c:when test="${!empty travelsList}">
                        <li>
                            <a href="JavaScript:location.href='<%=path%>/manager/searchTravels?pageNo=${pageModel.pageNo + 1}&t_name='+encodeURI(encodeURI('${t_name}'))+'&local='+encodeURI(encodeURI('${local}'))+'&username='+encodeURI(encodeURI('${username}'));">下一页</a>
                        </li>
                        <li>
                            <a href="JavaScript:location.href='<%=path%>/manager/searchTravels?pageNo=${pageModel.pageCount}&t_name='+encodeURI(encodeURI('${t_name}'))+'&local='+encodeURI(encodeURI('${local}'))+'&username='+encodeURI(encodeURI('${username}'));">末&nbsp;&nbsp;&nbsp;页</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="<%=path%>/manager/travelsManager?pageNo=${pageModel.pageNo + 1}">下一页</a></li>
                        <li><a href="<%=path%>/manager/travelsManager?pageNo=${pageModel.pageCount}">末&nbsp;&nbsp;&nbsp;页</a></li>
                    </c:otherwise>
                </c:choose>
            </c:if>
        </ul>
    </div>
</c:if>
<script src="<%=path%>/staticState/js/travelsList.js"></script>
</body>
</html>
