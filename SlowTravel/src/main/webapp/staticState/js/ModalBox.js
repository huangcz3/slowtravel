/**
 * Created by Administrator on 2017/6/20.
 */

$(document).ready(function() {
    function randomNumber(len) {
        len = len || 32;
        var $chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678'; // 默认去掉了容易混淆的字符oOLl,9gq,Vv,Uu,I1
        var maxPos = $chars.length;
        var pwd = '';
        for (i = 0; i < len; i++) {
            pwd += $chars.charAt(Math.floor(Math.random() * maxPos));
            pwd=pwd+" ";
        }
        return pwd;
    };
    function generateCaptcha() {
        $('#captchaOperation').html([randomNumber(4), ' '].join(' '));
    };
    generateCaptcha();
});
