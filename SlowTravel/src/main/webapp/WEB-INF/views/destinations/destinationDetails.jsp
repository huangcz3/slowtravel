<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: duyuxiang
  Date: 2017/6/18
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../../common/lib.jsp"%>
<head>

    <title>-目的地-慢旅行</title>
    <link rel="stylesheet" href="<%=path%>/staticState/css/destinationDetails.css">
    <script src="<%=path%>/staticState/js/jquery-1.9.0.js"></script>
</head>
<body>
<%@include file="../Title/Title.jsp" %>
<br>
<br>
<br>
<br>
<div class="tol">
<div class="desImgs">

     <!--信息-->
    <div class="desInfo">
         <p class="desName">${baseDestinationDetails.city_name}</p>
         <div class="desInfoNum">
             <span class="desInfoNumText">去过&nbsp;${baseDestinationDetails.wantToGo.go_number}</span>
         </div>
         <div class="desInfoNum desin">
             <span class="desInfoNumText">想去&nbsp;${baseDestinationDetails.wantToGo.want_number}</span>
         </div>
     </div>


    <div class="smallImgs">
            <img onclick="smallImg(this)" src="<%=path%>/staticState/img/${baseDestinationDetails.photo}" class="smallImg2"/>

            <c:forEach items="${baseDestinationDetails.picture}" var="ph">
                <img onclick="smallImg(this)" src="<%=path%>/staticState/img/${ph.url}" class="smallImg2"/>
            </c:forEach>

        <a href="<%=path%>/dest/destImg?destId=${baseDestinationDetails.id}" target="hotMenuPage" onclick="menuFont(this),hotPageShow()" ><div class="smallImg2 smallDiv">
                <p></p>
                <span>更多</span><br/>
                <span>${imgNumber}</span>
        </div></a>

    </div>
</div>

    <!--menu-->

    <div class="desMenu">
        <a class="desMenuName" onclick="menuFont(this),hotPageShow1()">首页</a>

        <a href="<%=path%>/dest/destImg?destId=${baseDestinationDetails.id}" target="hotMenuPage" class="desMenuName"  onclick="menuFont(this),hotPageShow()" >照片</a>
        <a href="<%=path%>/dest/destTra" target="hotMenuPage" class="desMenuName"  onclick="menuFont(this),hotPageShow()">游记</a>
        <a href="<%=path%>/dest/destSet?destId=${baseDestinationDetails.id}&type=美食" target="hotMenuPage" class="desMenuName"  onclick="menuFont(this),hotPageShow()">美食</a>
        <a href="<%=path%>/dest/destSet?destId=${baseDestinationDetails.id}&type=景点" target="hotMenuPage" class="desMenuName"  onclick="menuFont(this),hotPageShow()">景点</a>
        <a href="<%=path%>/dest/destSet?destId=${baseDestinationDetails.id}&type=住宿" target="hotMenuPage" class="desMenuName"  onclick="menuFont(this),hotPageShow()">住宿</a>
        <a href="<%=path%>/dest/destSet?destId=${baseDestinationDetails.id}&type=购物" target="hotMenuPage" class="desMenuName"  onclick="menuFont(this),hotPageShow()">购物</a>

    </div>

    <%--   正文内容--%>

    <div class="hotRecommend">
        <div class="leftHotRecommend">

            <%-- 热门景点标题--%>
            <div class="InstructionBar">
                <h2>热门景点</h2>
                <div class="gengduo">更多</div>
            </div>


                <div class="hotScenics">

                    <%--热门景点模块--%>
                    <c:forEach items="${jList}" var="jobd">
                    <div class="hotScenic">
                    <img src="<%=path%>/staticState/img/${jobd.url}" class="hotScenicImg"/>
                    <h2 class="hotScenicName"> ${jobd.place}</h2>
                </div>
                    </c:forEach>
                    </div>


                <%-- 精彩游记标题--%>
                <div class="InstructionBar">
                    <h2>精彩游记</h2>
                    <div class="gengduo">更多</div>
                </div>


                <div class="marvellousTravelses">
                    <%--精彩游记模块--%>
                    <div class="marvellousTravels">
                        <img class="TravelsImg" src="<%=path%>/staticState/img/dyx123.jpg"/>
                        <div class="TravelsInfo">
                            <h3 class="TravelsName">世界尽头</h3>
                            <h4 class="TravelsName">从世界尽头到奈何桥</h4>
                            <div class="TravelsBase">浏览 <b>12345</b></div>
                            <div class="TravelsBase">收藏 <b>12345</b></div>
                            <div class="TravelsBase">评论 <b>12345</b></div>
                        </div>
                    </div>

                </div>


                </div>

        <%--右部正文DIV--%>
        <div class="rightHotRecommend">

            <%-- 美食推荐标题--%>
            <div class="InstructionBar">
                <h2>美食推荐</h2>
                <div class="gengduo">更多</div>
            </div>

            <%--美食推荐DIV--%>
                <div class="foots">

                    <%--美食推荐模块--%>
                    <c:forEach items="${mList}" var="footl" varStatus="status">
                    <div class="foot">
                        <div class="footNum">${status.index+1}</div>
                        <div class="footText">${footl.place}</div>
                    </div>
                    </c:forEach>

                </div>
                <div class="dcseo"> </div>
                <%-- 住宿推荐标题--%>
                <div class="InstructionBar">
                    <h2>住宿推荐</h2>
                    <div class="gengduo">更多</div>
                </div>
                <%--住宿推荐DIV--%>
                <div class="foots">
                    <c:forEach items="${zList}" var="hotel" varStatus="status">
                    <%--住宿推荐模块--%>
                    <div class="foot">
                        <div class="footNum">${status.index+1}</div>
                        <div class="footText">${hotel.place}</div>
                    </div>
                    </c:forEach>
                </div>

        </div>

    </div>

    <iframe scrolling="no" id="hmp" name="hotMenuPage"></iframe>


</div>


<%@include file="../bottom/bottom.jsp" %>
</body>
<script type="text/javascript" src="<%=path%>/staticState/js/destinationDetails.js"></script>

</html>