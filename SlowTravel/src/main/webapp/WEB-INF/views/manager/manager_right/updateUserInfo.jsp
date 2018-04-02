<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/4
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../../common/lib.jsp" %>
<html>
<head>
    <title>修改个人信息</title>
</head>
<body>

<div style="padding: 20px 20px 20px 20px;">
    <div class="col-lg-12" style="text-align: center"><h1>个人资料修改</h1></div>
    <form  class="bs-example bs-example-form" onsubmit="return checkUpdateUserInfo()" action="<%=path%>/manager/updateUserInfo" method="post">
        <input type="text" hidden="hidden"  name="userId" value="${userId}">
        <input type="text" hidden="hidden" id="u_sex" value="${myDate.sex}">
        <input type="text" hidden="hidden" id="u_year" value="${userInfo_year}">
        <input type="text" hidden="hidden" id="u_month" value="${userInfo_month}">
        <input type="text" hidden="hidden" id="u_day" value="${userInfo_day}">
        <div class="input-group input-group-lg">
            <span class="input-group-addon">用&nbsp;户&nbsp;名&nbsp;</span>
            <input type="text" style="background-color: grey" name="birthday" disabled="disabled" id="u_inp1" value="${myDate.username}" class="form-control" >
        </div>
        <div class="col-lg-12" style="text-align: center"><p></p></div>
        <div class="col-lg-12" style="font-size: 20px;">
            <span>生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日</span>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <select title="${userInfo_year}" id="year" name="userInfo_year">
                <option value="1985">1985</option>
                <option value="1986">1986</option>
                <option value="1987">1987</option>
                <option value="1988">1988</option>
                <option value="1989">1989</option>
                <option value="1990">1990</option>
                <option value="1991">1991</option>
                <option value="1992">1992</option>
                <option value="1993">1993</option>
                <option value="1994">1994</option>
                <option value="1995">1995</option>
                <option value="1996">1996</option>
                <option value="1997">1997</option>
                <option value="1998">1998</option>
                <option value="1999">1999</option>
                <option value="2000">2000</option>
                <option value="2001">2001</option>
                <option value="2002">2002</option>
                <option value="2003">2003</option>
                <option value="2004">2004</option>
                <option value="2005">2005</option>
                <option value="2006">2006</option>
                <option value="2007">2007</option>
                <option value="2008">2008</option>
                <option value="2009">2009</option>
                <option value="2010">2010</option>
            </select>
            <span>年</span>&nbsp;&nbsp;
            <select title="${userInfo_month}" id="month" name="userInfo_month">
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
            </select>
            <span>月</span>&nbsp;&nbsp;
            <select title="${userInfo_day}" id="day" name="userInfo_day">
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
            </select>
            <span>日</span>
        </div>
        <div class="col-lg-12" style="text-align: center"><p></p></div>
        <div class="col-lg-12" style="font-size: 20px;">
            <span >性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            男&nbsp;&nbsp;<input type="radio" id="sex1"  name="sex" style="width: 15px;height: 15px;"  value="男" >
            &nbsp;&nbsp;&nbsp;
            女&nbsp;&nbsp;<input type="radio" id="sex2" style="width: 15px;height: 15px;" name="sex"  value="女" >
        </div>
        <div class="col-lg-12" style="text-align: center"><p></p></div>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</span>
            <input type="text" name="eamil" id="email" value="${myDate.eamil}" class="form-control" >
        </div>
        <div class="col-lg-12" style="text-align: center"><p style="color: red" id="u_p"></p></div>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">自我介绍</span>
            <input type="text" name="introduce" id="introduce" value="${myDate.introduce}" class="form-control" >
        </div>
        <div class="col-lg-12" style="text-align: center"><p style="color: red" id="u_intro"></p></div>
        <div class="col-lg-12" style="text-align: center;margin-top: 20px;">
            <button type="reset">信息重置</button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="submit" id="u_but">确认修改</button>
        </div>
    </form>
</div>
<script src="<%=path%>/staticState/js/updateUserInfo.js"></script>
</body>
</html>
