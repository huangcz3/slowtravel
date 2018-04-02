<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/20
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=path%>/staticState/css/ModalBox.css">
    <script src="<%=path%>/staticState/js/jquery-2.0.3.min.js"></script>
</head>
<body>
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
    开始演示模态框
</button>

<div class="modal fade bs-example-modal-md" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    创建新游记
                </h4>
            </div>
            <div class="modal-header" id="travelsName">
                <p class="modal-title">游记名字</p>
            </div>

            <div>
                <form class="bs-example bs-example-form" role="form">
                    <div class="input-group">
                        <input type="text" class="form-control" id="ipt1" placeholder="请输入游记名称" name="TravelNotes" >
                        <span class="input-group-addon" id="sp_span">名称</span>
                    </div>
                </form>
            </div>

            <div class="modal-header">
                <p class="modal-title">验证码</p>
            </div>

            <div class="input-group form-group form-horizontal">
                <input type="text" id="ipt" class="form-control"  name="captcha" placeholder="请输入验证码"  >
                <span class="input-group-addon" id="captchaOperation"></span>
            </div>
            <p class="col-lg-12 modal-header">隐私设置</p>

            <div  class="modal-header">
                <div class="input-group-btn">
                    <select name="type" class="form-control" id="se_select">
                        <option value="1">公开</option>
                        <option value="2">近好友可见</option>
                        <option value="2">近自己乐见</option>
                    </select>
                </div>
                <span class="input-group-btn" id="s_span">
                    <button class="btn btn-primary " id="search_submit" type="submit" >创建</button>
                </span>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script type="text/javascript" src="<%=path%>/staticState/js/ModalBox.js"></script>
