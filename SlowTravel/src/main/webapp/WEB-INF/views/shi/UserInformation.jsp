<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/3
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/lib.jsp"%>
<html>
<head>
    <title>用户个人信息</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/staticState/css/UserInfoJudge.css">
    <script type="text/javascript" src="<%=path%>/staticState/js/UserInfoJudge.js"></script>
</head>
<body>
<%@include file="../Title/Title.jsp" %>
<br/><br/><br/><br/>
    <div class="col-lg-2"></div>
    <div class="col-lg-8 "   id="userInfo_div">
        <form role="form"  enctype="multipart/form-data" method="post" action="<%=path%>/st_user/addUserInfo"  onsubmit="return UserInfo_email()">
            <div id="userInfo_div1">
                <span>性别</span>:&nbsp&nbsp
                <select title="男" id="userInfo_select1" name="userInfo_select1">
                    <option>男</option>
                    <option>女</option>
                </select>
            </div>
            <br/><br/>
            <div id="userInfo_div2">
                <span>生日:&nbsp;&nbsp;</span>
                <select title="1994" id="userInfo_year" name="userInfo_year">
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
                &nbsp;　<span>年</span>&nbsp;
                <select title="1" id="userInfo_montrh" name="userInfo_montrh">
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="9">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
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
                <input type="text" name="email" id="userInfo_ipt" onchange="UserInfo_email()">
                <span id="userInfo_span"></span>
            </div>
            <br/><br/>
            <div>
                <span>个人介绍</span><br/>
                <textarea class="form-control" rows="6" placeholder="请在此进行描述" id="userInfo_text" name="userInfo_text" maxlength="180"></textarea>
            </div>
            <br/><br/>
            <div>
                <input class="btn btn-primary " type="submit" value="保存">
            </div>
        </form>

    </div>
    <div class="col-lg-2"></div>
<%@include file="../bottom/bottom.jsp" %>
</body>
</html>

