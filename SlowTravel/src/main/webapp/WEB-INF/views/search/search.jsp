<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/27
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticState/css/Title.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticState/css/search.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticState/css/bottom.css">
</head>
<body>
<%@include file="../Title/Title.jsp" %>
<div class="center_whole">
    <div class="center_left">
        <form action="<%=path%>/st_user/goSearch" class="search_input" method="post">
            <h1 class="search_h1">
                搜索地点/用户
            </h1>
            <div class="search_wrapper">
                <input class="search_left" type="text" name="search">
                <div class="search_right">
                    <input type="submit" class="search_sub" value="" style="outline: none">
                </div>
            </div>
        </form>
        <div class="result_panel">
            <ul class="nav_bar">
                <li class="nav_item">
                    <h2 class="nav_h2">地点/游记(0)</h2>
                </li>
                <li class="nav_item_i">
                    <h2 class="nav_h2">用户(0)</h2>
                </li>
            </ul>
            <div class="panels">
                <%--DIV用户--%>
                <c:if test="${empty searchTravels}">
                    <div class="panels_trip">
                        <div class="panels_result">
                            <p class="panels_result_p">很抱歉，没有查找到数据</p>
                        </div>
                    </div>
                </c:if>
              <c:forEach items="${searchTravels}" var="search">
                  <div class="panels_trip">
                      <div class="panels_result">
                          <ul>
                              <li class="panels_li">
                                  <a href="<%=path%>/travels/travelsShow?tid=${search.travels.id}" class="float_left"><img src="<%=path%>/staticState/img/${search.picture.url}"
                                                                      class="float_img"></a>
                                  <div class="summary">
                                      <a href="<%=path%>/travels/travelsShow?tid=${search.travels.id}" class="float_a">${search.travels.t_name}</a><br>
                                      <div class="float_user">
                                          <a href="<%=path%>/travels/travelsShow?tid=${search.travels.id}" class="float_a">
                                              <span class="float_span">${search.st_user.username}</span>
                                          </a>
                                      </div>
                                      <br>
                                      <div class="date">${search.travels.calendar}</div>
                                      <div class="meta">
                                          <div class="mate_icon">
                                              ${search.travels.local}
                                          </div>
                                      </div>
                                  </div>
                              </li>
                          </ul>
                      </div>
                  </div>
              </c:forEach>
            </div>
        </div>
    </div>
    <div class="center_right">
        <%--热门城市--%>
        <div class="center_title">
            <div class="title_icon">
            </div>
            <h3 class="title_h3">热门城市</h3>
        </div>
        <%--div城市--%>
        <%--1--%>
        <div class="zuo">
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        1
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
            </div>
            <%--2--%>
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        2
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">北京</span></a></h4>
                </div>
            </div>
            <%--3--%>
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        3
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">上海</span></a></h4>
                </div>
            </div>
            <%--4--%>
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        4
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">厦门</span></a></h4>
                </div>
            </div>
            <%--5--%>
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        5
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">曼谷</span></a></h4>
                </div>
            </div>
        </div>
        <div class="you">
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        6
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
                <div class="title_item">
                    <div class="title_left_a">
                        7
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
                <div class="title_item">
                    <div class="title_left_a">
                        8
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
                <div class="title_item">
                    <div class="title_left_a">
                        9
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
                <div class="title_item">
                    <div class="title_left_a">
                        10
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
            </div>
        </div>
    </div>
    <div class="center_right">
        <%--热门国家/地区--%>
        <div class="center_title">
            <div class="title_icon_one">
            </div>
            <h3 class="title_h3">热门国家/地区</h3>
        </div>
        <%--div城市--%>
        <%--1--%>
        <div class="zuo">
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        1
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
            </div>
            <%--2--%>
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        2
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">北京</span></a></h4>
                </div>
            </div>
            <%--3--%>
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        3
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">上海</span></a></h4>
                </div>
            </div>
            <%--4--%>
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        4
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">厦门</span></a></h4>
                </div>
            </div>
            <%--5--%>
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        5
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">曼谷</span></a></h4>
                </div>
            </div>
        </div>
        <div class="you">
            <div class="title_left">
                <div class="title_item">
                    <div class="title_left_a">
                        6
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
                <div class="title_item">
                    <div class="title_left_a">
                        7
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
                <div class="title_item">
                    <div class="title_left_a">
                        8
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
                <div class="title_item">
                    <div class="title_left_a">
                        9
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
                <div class="title_item">
                    <div class="title_left_a">
                        10
                    </div>
                    <h4 class="title_h4"><a href="#" class="title_a"><span class="title_span">首尔</span></a></h4>
                </div>
            </div>
        </div>
    </div>
    <div class="center_bottom">
        <img src="/SlowTravel/staticState/img/search_dw.png" class="bottom_img">
    </div>
</div>
</div>
<%@include file="../bottom/bottom.jsp" %>
</body>
</html>
