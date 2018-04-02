/**
 * Created by duyuxiang on 2017/6/18.
 */


/*大图点击切换方法*/
//大图
var desImgs=$(".desImgs");
//小图
var smallImg2=$(".smallImg2");
smallImg2.css("border","solid 1px white");
desImgs.css("background-image","url('"+smallImg2.eq(0).attr("src")+"')").css({"background-repeat":"no-repeat","background-size":"100%"});
function smallImg(img){
    smallImg2.css("border","0px");
    img.style.border="solid 1px white";
    desImgs.css("background-image","url('"+img.src+"')");
}

$(".desMenuName").last().css("border","0px");
$(".TravelsBase").last().css("border","0px");

// 菜单移动固定方法
$(window).scroll(function () {
   if($(window).scrollTop()>500)
   {
       $(".desMenu").css({"position":"fixed","left":"0px","top":"-23px","background":"#e2e2e2"});
       $(".mainDiv").css("display","none");
   }else{
       $(".mainDiv").css("display","block");
       $(".desMenu").css({"position":"relative","background":"white"});
   }
});

$(".desMenuName").click(function () {
    $(window).scrollTop(490);
});


// iframe显示隐藏方法
function hotPageShow() {
    $(".hotRecommend").css("display","none");
    $("#hmp").css("display","block");
}
function hotPageShow1() {
    $(".hotRecommend").css("display","block");
    $("#hmp").css("display","none");
}

//菜单点击方法
$(".desMenuName").eq(0).css("font-weight","bold");
function menuFont(menu) {
    $(".desMenuName").css("font-weight","inherit");
    menu.style.color="#346ea0";
    menu.style.fontWeight="bold";
}

// iframe自适应高度方法
$("#hmp").load(qwe);
function qwe() {
    $(this).height($(this).contents().find("body").height());
}







