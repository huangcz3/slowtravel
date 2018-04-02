//主页自动轮播效果实现
function start() {
    $('#circleContent').carousel("next");
}
setInterval(start, 5000);

//标题菜单样式更改滚动监听
$(window).scroll(function () {
    if ($(window).scrollTop() == 0) {
        $('#mainDiv').addClass("mainDiv_top").removeClass('mainDiv');
        $('.leftA').removeClass("hoverDiv").addClass("hoverA");
    } else {
        $('#mainDiv').addClass("mainDiv").removeClass('mainDiv_top');
        $('.leftA').removeClass("hoverA").addClass("hoverDiv");
    }
});

//初始化导航菜单CSS样式
$(document).ready(function () {
    $('#mainDiv').addClass("mainDiv_top").removeClass('mainDiv');
    $('.leftA').removeClass("hoverDiv").addClass("hoverA");
});

var limit = 0;

//懒加载
function lazyLoad(user_id) {
    limit += 10;
    $.ajax({
        type:'post',
        url: "/SlowTravel/UTPLCC/lazyLoad",
        dataType:'json',
        data: 'limit='+limit,
        success:function (data) {
            data = eval("("+data+")");
            data = eval(data.options);
            if(data.length != 0){
                for(var i = 0;i<data.length;i++){
                    var obj;
                    if(user_id != null){
                        obj  = $('<div class="item_master"><div class="item_master_pr"><div class="item_master_pr_img"><img src="/SlowTravel'+data[i].photo+'" class="item_master_pr_img_tou"> </div> <div class="item_master_name"> <a href="/SlowTravel/travels/travelsShow?tid='+data[i].tid+'" class="item_master_name_a"><h6>'+data[i].username+'</h6></a> </div> <div class="item_master_name_h6"> <div class="item_master_name_desc"> <h6 class="item_master_name_a_h6">在&nbsp;<a href="/SlowTravel/travels/travelsShow?tid='+data[i].tid+'" class="item_master_name_a">'+data[i].t_name+'</a>途中添加了照片 </h6> </div> </div> <div class="item_master_time"> <span>12小时前</span> </div> </div> <div class="item_master_body"> <img src="/SlowTravel/staticState/img/'+data[i].url+'"> </div> <div class="item_master_text"> <a href="/SlowTravel/travels/travelsShow?tid='+data[i].tid+'" class="item_master_text_a"><h6 style="font-weight: inherit">'+data[i].exp+'</h6></a> </div> <div class="item_master_info"> <div class="item_master_info_cb"> <a onclick="likeCount(this,'+"'"+data[i].pid+"'"+','+"'"+user_id+"'"+')" class="item_master_text_a"> <div class="icon_f1"></div> <span class="icon_f2">'+data[i].likeCount+'</span> </a> </div> <div class="item_master_info_right"> <a href="/SlowTravel/travels/travelsShow?tid='+data[i].tid+'" class="item_master_text_a"> <div class="icon_d1"> <span class="icon_d2">'+data[i].messageCount+'</span> </div> </a> </div> </div> </div>');
                    }else{
                        obj = $('<div class="item_master"><div class="item_master_pr"><div class="item_master_pr_img"><img src="/SlowTravel'+data[i].photo+'" class="item_master_pr_img_tou"> </div> <div class="item_master_name"> <a href="/SlowTravel/travels/travelsShow?tid='+data[i].tid+'" class="item_master_name_a"><h6>'+data[i].username+'</h6></a> </div> <div class="item_master_name_h6"> <div class="item_master_name_desc"> <h6 class="item_master_name_a_h6">在&nbsp;<a href="/SlowTravel/travels/travelsShow?tid='+data[i].tid+'" class="item_master_name_a">'+data[i].t_name+'</a>途中添加了照片 </h6> </div> </div> <div class="item_master_time"> <span>12小时前</span> </div> </div> <div class="item_master_body"> <img src="/SlowTravel/staticState/img/'+data[i].url+'"> </div> <div class="item_master_text"> <a href="/SlowTravel/travels/travelsShow?tid='+data[i].tid+'" class="item_master_text_a"><h6 style="font-weight: inherit">'+data[i].exp+'</h6></a> </div> <div class="item_master_info"> <div class="item_master_info_cb"> <a data-toggle="modal" data-target="#myModal" class="item_master_text_a"> <div class="icon_f1"></div> <span class="icon_f2">'+data[i].likeCount+'</span> </a> </div> <div class="item_master_info_right"> <a href="/SlowTravel/travels/travelsShow?tid='+data[i].tid+'" class="item_master_text_a"> <div class="icon_d1"> <span class="icon_d2">'+data[i].messageCount+'</span> </div> </a> </div> </div> </div>');
                    }
                    $('.item_master').last().before(obj);
                }
            }else{
                $(".master_load_a").html("没有更多数据了");
            }
        }
    });
}
function likeCount(tmp,pid,user_id) {
    $.ajax({
        type:'post',
        url: "/SlowTravel/like/findLikeCount",
        dataType:'html',
        data: 'pid='+pid+'&user_id='+user_id,
        success:function (data) {
            var str =data.split(":",2);
            if(str[1] === "true"){
                $(tmp).children().filter(".icon_f2").html(str[0]);
                $(tmp).children().filter(".icon_f2").prev().removeClass("icon_f1").addClass("icon_f1_true");
            }else{
                $(tmp).children().filter(".icon_f2").html(str[0]);
                $(tmp).children().filter(".icon_f2").prev().removeClass("icon_f1_true").addClass("icon_f1");
            }
        }
    });
}




