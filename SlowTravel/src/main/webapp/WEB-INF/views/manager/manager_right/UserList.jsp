<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/3
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../../common/lib.jsp" %>
<html>
<head>
    <title>用户管理列表</title>
    <style type="text/css">
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
        <form action="<%=path%>/role/searchUser" method="post">
        <input id="search" style="width: 100%;height: 50px" type="text" name="search" placeholder="输入用户账号查找用户">
        </form>
    </div>
    <table border="3" style="text-align: center;width:100%;margin-top: 10px">
        <tr>
            <td>序号</td>
            <td>姓名</td>
            <td>角色</td>
            <td>热度</td>
            <td>操作</td>
        </tr>
        <c:if test="${empty pageModel.datas}">
            <tr>
                <td>暂无数据</td>
                <td>暂无数据</td>
                <td>暂无数据</td>
                <td>暂无数据</td>
                <td>暂无数据</td>
            </tr>
        </c:if>
       <c:forEach items="${pageModel.datas}" var="user" varStatus="i">
           <tr>
               <td>${i.index+1}</td>
               <td>${user.username}</td>
               <td><c:choose>
                   <c:when test="${user.role_id==1}">
                       超级管理员
                   </c:when>
                   <c:when test="${user.role_id==2}">
                       系统管理员
                   </c:when>
                   <c:when test="${user.role_id==3}">
                       一般管理员
                   </c:when>
                   <c:otherwise>
                       普通用户
                   </c:otherwise>
               </c:choose></td>
               <td>${user.hot}</td>
               <td><a onclick="findUserInfo('${user.id}')" data-toggle="modal" data-target="#myModal" >查看</a>&nbsp;&nbsp;<form action="<%=path%>/role/Cancellation" method="post"><input type="hidden" value="${user.id}" name="uid"><a onclick="checkHref(this)">注销</a></form></td>
           </tr>
       </c:forEach>
    </table>
    <c:if test="${pageModel.pageCount > 1}">
        <div class="col-lg-12">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="page_number">当前页面 ：第&nbsp;&nbsp;${pageModel.pageNo}&nbsp;&nbsp; 页</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="page_number">共&nbsp;&nbsp;${pageModel.pageCount}&nbsp;&nbsp; 页</span>
            <form class="page_number" onsubmit="return cheackPage()" action="<%=path%>/role/findAllSt_user">
                <input style="width: 30px" type="text" id="pageNo_inp" name="pageNo">
                <input hidden="hidden" id="pageNo_hid" value="${pageModel.pageCount}">
                <button id="pageNo_but" type="submit">跳转</button>
                <span id="pageNo_sp" style="color: red"></span>
            </form>
        </div>

        <div class="col-lg-12" style="text-align: left">
            <ul class="pagination page_ul">
                <c:if test="${pageModel.pageNo > 1}">
                            <li><a href="<%=path%>/role/findAllSt_user?pageNo=1">首&nbsp;&nbsp;&nbsp;页</a></li>
                            <li><a href="<%=path%>/role/findAllSt_user?pageNo=${pageModel.pageNo - 1}">上一页</a></li>
                </c:if>
                <c:if test="${pageModel.pageNo < pageModel.pageCount}">
                            <li><a href="<%=path%>/role/findAllSt_user?pageNo=${pageModel.pageNo + 1}">下一页</a></li>
                            <li><a href="<%=path%>/role/findAllSt_user?pageNo=${pageModel.pageCount}">末&nbsp;&nbsp;&nbsp;页</a></li>
                </c:if>
            </ul>
        </div>
    </c:if>
    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="padding: 25px;">
                    <div class="rightA rightW" style="width: 170px;"><a>用户信息查看修改</a></div>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <form action="<%=path%>/role/modifyUser" method="post" onsubmit="return myConfirm()">
                    <div class="modal-body">
                        <input type="hidden" id="userId" name="id">
                        用户名：&nbsp; <input class="userInfo" type="text" disabled="disabled" style="background:#CCCCCC" name="username">
                        <br>
                        <span id="selectDom">角　色：&nbsp;</span>
                        <br>
                        热　度：&nbsp; <input id="hot" class="userInfo" type="text" name="hot" placeholder="请输入热度" onkeyup="checkHot()">
                        <p id="check_h" style="color: red;"></p>
                        <br>
                        <span id="sex_boy">性　别：&nbsp;</span>
                        <br>
                        生　日：&nbsp;<input id="birthday" class="userInfo" type="text" name="birthday" placeholder="请输入用户生日" onkeyup="checkBirthday()">
                        <p id="check_b" style="color: red;"></p>
                        <br>
                        邮　箱：&nbsp; <input id="email" class="userInfo" type="text" name="eamil" placeholder="请输入用户邮箱" onkeyup="checkEmail()">
                        <p id="check_e" style="color: red;"></p>
                        <br>
                        个人介绍：&nbsp;<textarea name="introduce" class="userInfo" id="textare" onkeyup="checkIntroduce()"></textarea>
                        <p id="check_i" style="color: red;"></p>
                        <br>
                        <input type="hidden" id="uid" name="uid">
                    </div>
                    <div class="modal-footer">
                        <button id="reset" type="button" onclick="findUserInfo(this.value)" class="btn btn-primary">重置信息</button>
                        <button type="submit" class="btn btn-primary">确认修改</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="<%=path%>/staticState/js/travelsList.js"></script>
</body>
</html>
