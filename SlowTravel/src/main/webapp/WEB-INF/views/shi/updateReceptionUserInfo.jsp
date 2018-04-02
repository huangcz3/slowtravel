<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/5
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/staticState/css/UserInfoJudge.css">
    <script type="text/javascript" src="<%=path%>/staticState/js/UserInfoJudge.js"></script>
</head>
<body>
<%@include file="../Title/Title.jsp" %>
<br/><br/><br/><br/>
<div class="col-lg-2"></div>
<div class="col-lg-8 "   id="userInfo_div">
    <form role="form"  enctype="multipart/form-data" method="post" action="<%=path%>/st_user/updateUserInfo"  onsubmit="return UserInfo_email()">
        <div id="userInfo_div1">
            <span>性别</span>:&nbsp&nbsp
            <select title="男" id="userInfo_select1" name="userInfo_select1" value="${userInfo.sex}">
                <option>男</option>
                <option>女</option>
            </select>
        </div>
        <br/><br/>
        <div id="userInfo_div2">
            <span>生日:&nbsp;&nbsp;</span>
            <select title="1994" id="userInfo_year" name="userInfo_year">
                <option>1985</option>
                <option>1986</option>
                <option>1987</option>
                <option>1988</option>
                <option>1989</option>
                <option>1990</option>
                <option>1991</option>
                <option>1992</option>
                <option>1993</option>
                <option>1994</option>
                <option>1995</option>
                <option>1996</option>
                <option>1997</option>
                <option>1998</option>
                <option>1999</option>
                <option>2000</option>
                <option>2001</option>
                <option>2002</option>
            </select>
            &nbsp;　<span>年</span>&nbsp;
            <select title="1" id="userInfo_montrh" name="userInfo_montrh">
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
            </select>
            &nbsp;　<span>月</span>&nbsp;
            <select title="1" id="userInfo_day" name="userInfo_day">
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
                <option>20</option>
                <option>21</option>
                <option>22</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
                <option>28</option>
                <option>29</option>
                <option>30</option>
                <option>31</option>
            </select>
            &nbsp;　<span>日</span>
        </div>
        <br/><br/>
        <div class="input-group">
            <span>电子邮箱:&nbsp&nbsp</span>
            <input type="text" name="email" id="userInfo_ipt" onchange="UserInfo_email()" value="${userInfo.birthday}">
            <span id="userInfo_span"></span>
        </div>
        <br/><br/>
        <div>
            <span>个人介绍</span><br/>
            <textarea class="form-control" rows="6" placeholder="请在此进行描述" id="userInfo_text" name="userInfo_text">${userInfo.introduce}</textarea>
        </div>
        <br/><br/>
        <div>
            <input class="btn btn-primary " type="submit" value="修改">
        </div>
    </form>

</div>
<div class="col-lg-2"></div>
<%@include file="../bottom/bottom.jsp" %>
</body>
</html>
