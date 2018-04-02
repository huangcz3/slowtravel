/**
 * Created by liaoxuan on 2017/6/29.
 */


var flag1 = false;

/*游记名称判断*/
$("#t_inp1").keyup(function () {
    if ($(this).val() == "" || $(this).val().length > 12) {
        $(".t_p:eq(0)").text("游记名称不能为空，且长度不能大于12位!");
        flag1 = false;
    } else {
        $(".t_p:eq(0)").text("");
        flag1 = true;
    }
});

var flag2 = false;

/*游记热度判断*/
$("#t_inp2").keyup(function () {
    var patt = new RegExp(/^[0-9]+$/g);
    if ($(this).val() == "" || !patt.test($(this).val())) {
        $(".t_p:eq(1)").text("游记热度不能为空，且只能为整数!");
        flag2 = false;
    } else {
        $(".t_p:eq(1)").text("");
        flag2 = true;

    }
});

var flag3 = false;

/*游记热度判断*/
$("#t_inp3").keyup(function () {
    if ($(this).val() == "" || $(this).val().length > 10) {
        $(".t_p:eq(2)").text("游记地名不能为空，且长度不能大于10位!");
        flag3 = false;
    } else {
        $(".t_p:eq(2)").text("");
        flag3 = true;
    }
});

/*输入内容合法就能提交*/
function cheakUpdate() {
    if (flag1 == true && flag2 == true && flag3 == true) {
        if(confirm("确认修改？")){
            return true;
        }
    } else {
        return false;
    }

}

/*初始化*/
$(document).ready(function () {
    var patt = new RegExp(/^[0-9]+$/g);
    if ($("#t_inp1").val() == "" || $("#t_inp1").val().length > 12) {
    } else {
        flag1 = true;
    }
    if ($("#t_inp2").val() == "" || !patt.test($("#t_inp2").val())) {
    } else {
        flag2 = true;
    }
    if ($("#t_inp3").val() == "" || $("#t_inp3").val().length > 10) {
    } else {
        flag3 = true;
    }

});



