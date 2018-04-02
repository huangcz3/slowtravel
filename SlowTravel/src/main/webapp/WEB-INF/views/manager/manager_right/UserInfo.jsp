<%--
  Created by IntelliJ IDEA.
  User: shilei
  Date: 2017/6/30
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../../common/lib.jsp" %>
<html>
<head>
    <title>用户基本信息</title>
</head>
<style>
    table{
        width:100%;
        border: 1px solid black;
        text-align: center;
        height: 400px;
    }
    th{
        border: 1px solid black;
        text-align: center;
    }
    td{
        border: 1px solid black;
    }
</style>
<body>
    <div class="col-md-12" style="text-align: center">
        <h1>个人信息</h1>
        <table >
            <tr>
                <th>账号</th>
                <td>${myData.username}</td>
            </tr>
            <tr>
                <th>性别</th>
                <td>${myData.sex}</td>
            </tr>
            <tr>
                <th>出生年月</th>
                <td>${myData.birthday}</td>
            </tr>
            <tr>
                <th>邮箱</th>
                <td>${myData.eamil}</td>
            </tr>
            <tr>
                <th>个人介绍</th>
                <td>${myData.introduce}</td>
            </tr>
        </table>
    </div>
</body>
</html>
