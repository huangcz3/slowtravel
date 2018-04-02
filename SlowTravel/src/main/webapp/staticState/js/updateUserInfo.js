/** 后台修改用户信息
 * Created by liaoxuan on 2017/7/4.
 */

$(document).ready(function () {

    for(var i=0;i<$("#year").children().length;i++){
        if($("#u_year").val()==$("#year").children().eq(i).val()){
            $("#year").children().eq(i).attr("selected",true)
        }
    }

    for( i=0;i<$("#month").children().length;i++){
        if($("#u_month").val()==$("#month").children().eq(i).val()){
            $("#month").children().eq(i).attr("selected",true)
        }
    }

    for( i=0;i<$("#day").children().length;i++){
        if($("#u_day").val()==$("#day").children().eq(i).val()){
            $("#day").children().eq(i).attr("selected",true)
        }
    }

});


if($("#u_sex").val()=='男'){
    $("#sex1").attr("checked",true);
}else{
    $("#sex2").attr("checked",true);
}


$("#email").keyup(function () {
    var patt=/^\d{5,12}@[qQ][qQ]\.(com|cn)$/;
    if($(this).val()=="" || !patt.test($(this).val())){
        $("#u_p").text("请输入正确的邮箱！");
        $("#u_but").attr("disabled",true)
    }else{
        $("#u_p").text("");
        $("#u_but").attr("disabled",false);
    }

});


$("#introduce").keyup(function () {
    if($(this).val().length>60){
        $("#u_intro").text("内容不能超过60个字");
        $("#u_but").attr("disabled",true)
    }else{
        $("#u_intro").text("");
        $("#u_but").attr("disabled",false);
    }
});


function checkUpdateUserInfo() {
    if (window.confirm("确认修改?")) {
        return true;
    } else {
        window.location = "/SlowTravel/manager/userInfo" ;
        return false;
    }
}

