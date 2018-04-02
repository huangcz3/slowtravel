/**
 * Created by liaoxuan on 2017/4/25.
 */

/**
 *  这是登录页面的JS
 *
 */
$(document).ready(function () {
    /*自动生成验证码*/
    var codeArray = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
        , "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
        , "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
    var code = "";
    for (var i = 0; i < 4; i++) {
        code += codeArray[Math.floor(Math.random() * codeArray.length)];
    }
    $("#code").text(code);

    /*刷新验证码*/
    $("#code").click(function () {
        var code = "";
        for (var i = 0; i < 4; i++) {
            code += codeArray[Math.floor(Math.random() * codeArray.length)];
        }
        $("#code").text(code);
    });

    
    /*判断验证码是否正确*/
    $("#inp_code").keyup(function () {
        if ($(this).val() == "" || $(this).val().toLowerCase() != $("#code").text().toLowerCase()) {
            $("#sp5").text("验证码错误！");
            $("#butt").attr("disabled", true);
        } else {
            $("#sp5").text("");
            $("#butt").attr("disabled", false);
        }
    });
    
    
});


