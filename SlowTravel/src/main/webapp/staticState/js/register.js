/**
 * Created by liaoxuan on 2017/6/16.
 */

/**
 * 这是判断注册页面的js
 * */

/*自动生成验证码*/
var codeArray = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
    , "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
    , "1", "2", "3", "4", "5", "6", "7", "8", "9"];

var code = "";

for (var i = 0; i < 4; i++) {
    code += codeArray[Math.floor(Math.random() * codeArray.length)];
}

$("#p3").text(code);

/*刷新验证码*/
$("#p3").click(function () {
    var code = "";
    for (var i = 0; i < 4; i++) {
        code += codeArray[Math.floor(Math.random() * codeArray.length)];
    }
    $("#p3").text(code);
});

var flag4 = false;

/*判断验证码是否正确*/
function codeChange() {
    if ($(".inpCode").val() == "" || $(".inpCode").val().toLowerCase() != $("#p3").text().toLowerCase()) {
        $("#sp3").text("验证码错误！");
        flag4 = false;
    } else {
        $("#sp3").text("");
        flag4 = true;
    }
}

var flag1 = false;

/*判断输入账号是否合法*/

$("#inp1").blur(function () {
    var patt = new RegExp(/^[\u4e00-\u9fa5a-zA-Z0-9]+$/g);
    if ($(this).val() == "") {
        $("#sp1").text("账号不能为空！");
        flag1 = false;
    }else if($(this).val().length<6){
        $("#sp1").text("账号长度不能小于6位！");
        flag1 = false;
    }else if($(this).val().length>18){
        $("#sp1").text("账号长度不能大于18位！");
        flag1 = false;
    }else if (!patt.test($(this).val())) {
        $("#sp1").text("账号格式错误！");
        flag1 = false;
    } else {
        $.ajax({
            type: "post",
            url: "/SlowTravel/st_user/checkUsername",
            data: "username=" + $(this).val(),
            success: function (date) {
                if (date == "yes") {
                    $("#sp1").text("该用户已存在！");
                } else {
                    $("#sp1").text("");
                    flag1 = true;
                }
            },
            dataType: "html"
        });

    }
});

var flag2 = false;

/*判断输入第一次密码是否合法*/

$("#inp2").keyup(function () {
    if ($(this).val() == "") {
        $("#sp2").text("密码不能为空！");
        flag2 = false;
    }else if($(this).val()!=$("#inp4").val()){
        $("#sp2").text("");
        flag2 = false;
    }else if($(this).val().length>20){
        $("#sp2").text("密码太长！");
        flag2 = false;
    }else{
        $("#sp2").text("");
        flag2 = true;
    }

});

var flag3 = false;

/*判断输入第二次密码是否合法*/

$("#inp4").keyup(function () {
    if ($(this).val() == "") {
        $("#sp4").text("密码不能为空！");
        flag3 = false;
    } else if ($(this).val() != $("#inp2").val()) {
        $("#sp4").text("密码不一致!");
        flag3 = false;
    } else {
        $("#sp2").text("");
        $("#sp4").text("");
        flag2 = true;
        flag3 = true;
    }
});

/*$("#buttDis").click(function () {
    if(flag1==false || flag2==false || flag3==false || flag4==false){
        $(this).attr("disabled",true);
    }
    $(this).attr("disabled",false);
});*/

/*$(document).ready(function () {
    if(flag1==false || flag2==false || flag3==false || flag4==false){
        $("#buttDis").attr("disabled",true);
    }
});*/

function user_register() {
    if(flag1==true && flag2==true && flag3==true && flag4==true){
        if(window.confirm("确认注册？")){
            var flag5 = false;
            $.ajax({
                type: "post",
                async:false,
                cache:false,
                url: "/SlowTravel/st_user/checkUsername",
                data: "username=" + $("#inp1").val(),
                success: function (date) {
                    if (date == "yes") {
                        $("#sp1").text("该用户已存在！");
                    } else {
                        $("#sp1").text("");
                        if(window.confirm("恭喜你注册成功！")){
                            flag5 = true;
                        }
                    }
                },
                dataType: "html"
            });
            return flag5;
        }
    }
        return false;

}











