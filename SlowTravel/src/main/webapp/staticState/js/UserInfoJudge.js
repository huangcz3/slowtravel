/**
 * Created by shilei on 2017/7/4.
 */


function UserInfo_email() {
    var patt=/^\d{5,12}@[qQ][qQ]\.(com|cn)$/;
    var email=$("#userInfo_ipt").val()
    if(email !="" && email !=null){
        if(!patt.test(email)){
            $("#userInfo_span").html("邮箱错误,重新输入").css("color","red");
            return false;
        }else{
            $("#userInfo_span").html("邮箱正确!").css("color","black");
            return true;
        }
    }
    $("#userInfo_span").html("邮箱不能为空!").css("color","red");
    return false;
}

