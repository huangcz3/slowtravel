<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/16
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=path%>/staticState/css/fileinput.css" type="text/css" media="all">
    <link rel="stylesheet" href="<%=path%>/staticState/css/CreateTravelNotes.css" type="text/css">
    <link rel="stylesheet" href="<%=path%>/staticState/css/cityselect.css" type="text/css">
    <script src="<%=path%>/staticState/js/jquery-2.0.3.min.js"></script>
    <script src="<%=path%>/staticState/js/cityselect.js"></script>
    <script src="<%=path%>/staticState/js/fileinput.js"></script>
    <script src="<%=path%>/staticState/js/CreateTravels.js" type="text/javascript"></script>
</head>
<body>
<%@include file="../Title/Title.jsp" %>
<br/><br/><br/><br/>
<div>
    <div class="col-lg-2" id="col2"></div>
    <div class="col-lg-8" id="col8">
        <form role="form"  enctype="multipart/form-data" method="post" action="<%=path%>/travels/addUpload" onsubmit="return CreateTravels_Name()">
            <div class="input-group">
                <span class="input-group-addon">游记名称</span>
                <input type="text"  name="ipt1" class="form-control" placeholder="请输入游记名称" id="ipt_id" maxlength="12" >
            </div>

            <br><br>
            <div class="form-group">
                <input  type="file" multiple class="file"  data-min-file-count="1"  name="uploads">
            </div>
            <br><br>

            <textarea id="textareas" name="text" class="form-control" rows="6" placeholder="请在此进行描述" maxlength="100"></textarea>
            <br><br>
            <h5>目的地选择</h5>
            <br>
            <input type="text" name="ipt3" class="cityinput" id="citySelect" placeholder="请输入目的地">
            <br><br>
            <div id="CreateTravel_photo_id">
                <h5>照片类别</h5>
                <select id="selectTravelCity" title="美食" name="selectTravelCategory">
                    <option>美食</option>
                    <option>景点</option>
                    <option>住宿</option>
                    <option>购物</option>
                </select>
            </div>

            <span class="input-group-btn" id="s_span">
                    <button class="btn btn-primary " id="search_submit" type="submit" >提交</button>
            </span>


        </form>
    </div>
    <div class="col-lg-2" id="col"></div>
</div>
<br/><br/>
<%@include file="../bottom/bottom.jsp" %>
</body>
</html>
<script type="text/javascript">
    var test=new Vcity.CitySelector({input:'citySelect'});
</script>

