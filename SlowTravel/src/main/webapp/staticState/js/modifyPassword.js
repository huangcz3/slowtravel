/**修改密码
 * Created by liaoxuan on 2017/7/5.
 */

var flag1 = false;

$("#oldPassword").blur(function () {
    if ($("#oldPassword").val() == "") {
        $(".u_sp:eq(0)").text("密码错误！");
        flag1 = false;
    } else {
        $.ajax({
            type: "post",
            url: "/SlowTravel/st_user/checkPassword",
            data: "username=" + $("#username").val() + "&password=" + $("#oldPassword").val(),
            success: function (date) {
                if (date == "yes") {
                    $(".u_sp:eq(0)").text("");
                    flag1 = true;
                } else {
                    $(".u_sp:eq(0)").text("密码错误！");
                    flag1 = false;
                }
            },
            dataType: "html"
        });
    }

});

var flag2 = false;

$("#password1").keyup(function () {
    if ($("#password1").val() == "") {
        $(".u_sp:eq(1)").text("密码不能为空！");
        flag2 = false;
    }else if($("#password2").val() != $("#password1").val()){
        $(".u_sp:eq(1)").text("");
        flag2 = false;
    }else {
        $(".u_sp:eq(1)").text("");
        flag2 = true;
    }
});

var flag3=false;

$("#password2").keyup(function () {
    if ($("#password2").val() != $("#password1").val()) {
        $(".u_sp:eq(2)").text("密码不一致！");
        flag3=false;
    } else {
        $(".u_sp:eq(2)").text("");
        flag2 = true;
        flag3 = true;
    }
});


var flag4=false;

function modifyPassword() {
    if(flag1==true && flag2==true && flag3==true){
        $.ajax({
            type: "post",
            async:false,
            cache:false,
            url: "/SlowTravel/st_user/checkPassword",
            data: "username=" + $("#username").val() + "&password=" + $("#oldPassword").val(),
            success: function (date) {
                if (date == "yes") {
                    $(".u_sp:eq(0)").text("");
                    if(window.confirm("确认修改？")){
                        flag4 = true;
                    }
                } else {
                    $(".u_sp:eq(0)").text("密码错误！");
                }
            },
            dataType: "html"
        });
        return flag4;
    }

    return false;
}