<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/28
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../../common/lib.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .t_p{
        color: red;
    }
</style>
<body>
<div style="padding: 100px 100px 10px;">
    <div class="col-lg-12" style="text-align: center"><h1>游记资料修改</h1></div>
    <form onsubmit="return cheakUpdate()" class="bs-example bs-example-form" action="<%=path%>/manager/updateTravels" method="post">
        <input type="text" hidden="hidden"  name="id" value="${travels.id}">
        <div class="input-group input-group-lg">
            <span class="input-group-addon">游记名称</span>
            <input type="text" name="t_name" id="t_inp1" value="${travels.t_name}" class="form-control" placeholder="请输入游记名称">
        </div>
        <div class="col-lg-12" style="text-align: center"><p class="t_p"></p></div>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">游记热度</span>
            <input type="text" name="hot" id="t_inp2" value="${travels.hot}" class="form-control" placeholder="请输入游记热度">
        </div>
        <div class="col-lg-12" style="text-align: center"><p class="t_p"></p></div>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">游记地点</span>
            <input type="text" name="local" id="t_inp3" value="${travels.local}" class="form-control" placeholder="请输入游记地点">
        </div>
        <div class="col-lg-12" style="text-align: center"><p class="t_p"></p></div>
        <div class="col-lg-12" style="text-align: center;margin-top: 20px;">
            <button type="reset">信息重置</button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="submit" id="t_but" >确认提交</button>
        </div>
    </form>
</div>
<script type="text/javascript" src="<%=path%>/staticState/js/updateTravels.js"></script>
</body>
</html>
