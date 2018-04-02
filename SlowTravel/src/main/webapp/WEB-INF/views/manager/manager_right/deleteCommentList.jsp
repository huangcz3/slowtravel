<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/5
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../../common/lib.jsp" %>
<html>
<head>
    <title>Title</title>
    <style>
        #search::-webkit-input-placeholder{
            color: #999;
        }
        .userInfo::-webkit-input-placeholder{
            color: #999;
        }
        a{
            color: black;
        }
        a:hover{
            text-decoration: none;
            color: black;
            cursor: pointer;
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
</head>
<body>
<div style="width: 100%">
    <form action="<%=path%>/delete/searchDeleteComment" method="post">
        <input id="search" style="width: 100%;height: 50px" type="text" name="search" placeholder="请输入内容查询删除信息">
    </form>
</div>
<table border="3" style="text-align: center;width:100%;margin-top: 10px">
    <tr>
        <td>序号</td>
        <td>消息内容</td>
        <td>发送账户</td>
        <td>接收账户</td>
        <td>时间</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${pageModel.datas}" var="comment" varStatus="i">
    <tr>
        <td>${i.index+1}</td>
        <td>${comment.content}</td>
        <td>${comment.username}</td>
        <td>${comment.receive_username}</td>
        <td>${comment.date}</td>
        <td><a href="<%=path%>/delete/renewComment?id=${comment.id}">恢复</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=path%>/delete/shiftDeleteComment?id=${comment.id}">彻底删除</a></td>
    </tr>
    </c:forEach>
</table>
<c:if test="${pageModel.pageCount > 1}">
    <div class="col-lg-12">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="page_number">当前页面 ：第&nbsp;&nbsp;${pageModel.pageNo}&nbsp;&nbsp; 页</span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="page_number">共&nbsp;&nbsp;${pageModel.pageCount}&nbsp;&nbsp; 页</span>
        <form class="page_number" onsubmit="return cheackPage()" <c:if test="${flag != null}"> action="<%=path%>/delete/searchDeleteComment"</c:if> <c:if test="${empty flag}"> action="<%=path%>/delete/goDeleteComment"</c:if>>
            <input style="width: 30px" type="text" id="pageNo_inp" name="pageNo">
            <input type="hidden" value="${flag}" name="search">
            <input hidden="hidden" id="pageNo_hid" value="${pageModel.pageCount}">
            <button id="pageNo_but" type="submit">跳转</button>
            <span id="pageNo_sp" style="color: red"></span>
        </form>
    </div>

    <div class="col-lg-12" style="text-align: left">
        <ul class="pagination page_ul">
            <c:if test="${pageModel.pageNo > 1}">
                <c:if test="${flag != null}">
                    <li><a href="<%=path%>/delete/searchDeleteComment?pageNo=1&search=${flag}">首&nbsp;&nbsp;&nbsp;页</a></li>
                    <li><a href="<%=path%>/delete/searchDeleteComment?pageNo=${pageModel.pageNo - 1}&search=${flag}">上一页</a></li>
                </c:if>
                <c:if test="${empty flag}">
                    <li><a href="<%=path%>/delete/goDeleteComment?pageNo=1">首&nbsp;&nbsp;&nbsp;页</a></li>
                    <li><a href="<%=path%>/delete/goDeleteComment?pageNo=${pageModel.pageNo - 1}">上一页</a></li>
                </c:if>
            </c:if>
            <c:if test="${pageModel.pageNo < pageModel.pageCount}">
                <c:if test="${flag != null}">
                    <li><a href="<%=path%>/delete/searchDeleteComment?pageNo=${pageModel.pageNo + 1}&search=${flag}">下一页</a></li>
                    <li><a href="<%=path%>/delete/searchDeleteComment?pageNo=${pageModel.pageCount}&search=${flag}">末&nbsp;&nbsp;&nbsp;页</a></li>
                </c:if>
                <c:if test="${empty flag}">
                    <li><a href="<%=path%>/delete/goDeleteComment?pageNo=${pageModel.pageNo + 1}">下一页</a></li>
                    <li><a href="<%=path%>/delete/goDeleteComment?pageNo=${pageModel.pageCount}">末&nbsp;&nbsp;&nbsp;页</a></li>
                </c:if>
            </c:if>
        </ul>
    </div>
</c:if>
<script src="<%=path%>/staticState/js/travelsList.js"></script>
</body>
</html>
