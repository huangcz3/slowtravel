/**
 * Created by liaoxuan on 2017/6/30.
 */

/*判断搜索页面输入框*/

function cheackPage () {

    var patt = new RegExp(/^[0-9]+$/g);

    if($("#pageNo_inp").val()=="" || !patt.test($("#pageNo_inp").val()) || parseInt($("#pageNo_inp").val())<1){
        $("#pageNo_sp").text("输入错误!");
        return false;
    }else {
        if(parseInt($("#pageNo_inp").val()) > parseInt($("#pageNo_hid").val())){
            $("#pageNo_inp").val($("#pageNo_hid").val())
        }
        $("#pageNo_sp").text("");
        return true;
    }

}

function findUserInfo(id) {
    $("#se_select").remove();
    $("#sex").remove();
    var dom = $(".userInfo");
    $(dom).val("");
    $("#uid").val("");
    $("#userId").val();
    $("#check_b").html("");
    var obj = null;
    $.ajax({
        type:'post',
        url: "/SlowTravel/role/findUserInfo",
        dataType:'json',
        data: 'id='+id,
        success:function (data) {
            data = eval("("+data+")");
            data = eval(data.options);
            $("#userId").val(id);
            $("#reset").val(data[0].id);
            $(dom).eq(0).val(data[0].username);
            switch (data[0].role_id){
                case '4':
                    obj = $('<select id="se_select" name="role_id" class="userInfo" > <option selected="selected">普通用户</option> <option>一般管理员</option> <option>系统管理员</option> <option>超级管理员</option> </select>');
                    break;
                case '3':
                    obj = $('<select id="se_select" name="role_id" class="userInfo" > <option >普通用户</option> <option selected="selected">一般管理员</option> <option>系统管理员</option> <option>超级管理员</option> </select>');
                    break;
                case '2':
                    obj = $('<select id="se_select" name="role_id" class="userInfo" > <option >普通用户</option> <option>一般管理员</option> <option selected="selected">系统管理员</option> <option>超级管理员</option> </select>');
                    break;
                default:
                    obj = $('<select id="se_select" name="role_id" class="userInfo" > <option>普通用户</option> <option>一般管理员</option> <option>系统管理员</option> <option  selected="selected">超级管理员</option> </select>');
                    break;
            }
            $("#hot").val(data[0].hot);
            var obj2 = null;
            $("#uid").val(data[0].uid>0?data[0].uid:0);
            if(null != data[0].sex){
                if("男"==data[0].sex){
                    obj2 = $('<div id="sex"><span>男：&nbsp;</span><input class="userInfo sex" type="radio" name="sex" value="男" checked="checked"><span>&nbsp;&nbsp;&nbsp;女&nbsp; </span><input value="女" type="radio" class="userInfo sex" name="sex"></div>');
                }else{
                    obj2 = $('<div id="sex"><span>男：&nbsp;</span><input class="userInfo sex" type="radio" name="sex" value="男"><span>&nbsp;&nbsp;&nbsp;女&nbsp; </span><input value="女" checked="checked" type="radio" class="userInfo sex" name="sex"></div>');
                }
                $("#birthday").val(data[0].birthday);
                $("#email").val(data[0].eamil);
                $("#textare").val(data[0].introduce);
            }else{
                obj2 = $('<div id="sex"><span>男：&nbsp;</span><input class="userInfo sex" type="radio" name="sex" value="男"><span>&nbsp;&nbsp;&nbsp;女&nbsp; </span><input value="女" type="radio" class="userInfo sex" name="sex"></div>');
            }
            $("#selectDom").after(obj);
            $("#sex_boy").after(obj2);
        }
    });
}

//确认修改
function myConfirm() {
    if(confirm("是否修改")&&flag&&flag1&&flag2&&flag3){
        alert("修改成功");
        return true;
    }
    alert("修改失败,请输入正确的信息！");
    return false;
}
var flag = true;
function checkBirthday() {
    var patt = /^(19|20)\d{2}(1[0-2]|0[0-9])(0[1-9]|[1-2][0-9]|3[0-1])$/;
    if(!patt.test($("#birthday").val())){
        $("#check_b").html("请输入正确的生日格式   eg:19941019");
        flag = false;
    }else{
        $("#check_b").html("");
        flag = true;
    }
}

var flag1 = true;
function checkHot() {
    var patt = /^[0-9]+$/;
    if(!patt.test($("#hot").val())){
        $("#check_h").html("请输入数字");
        flag1 = false;
    }else{
        $("#check_h").html("");
        flag1 = true;
    }
}

var flag2 = true;
function checkEmail() {
    var patt = /^\d{5,12}@[qQ][qQ]\.(com|cn)$/;
    if(!patt.test($("#email").val())){
        $("#check_e").html("请输入正确的邮箱格式   eg:12345678@qq.com");
        flag2 = false;
    }else{
        $("#check_e").html("");
        flag2 = true;
    }
}

var flag3 = true;
function checkIntroduce() {
    if($("#textare").val().length>50){
        $("#check_i").html("请输入50以内的字数");
        flag3 = false;
    }else{
        $("#check_i").html("");
        flag3 = true;
    }
}

function checkHref(tmp) {
    if(confirm("确认删除？")){
        if(confirm("你真的确认删除？")){
            if(confirm("不删不行吗？")){
                $(tmp).parent().submit();
                alert("删除成功");
            }
        }
    }
}

function checkDelete() {
    if(window.confirm("确认删除？")){
        return true
    }
    return false;
}