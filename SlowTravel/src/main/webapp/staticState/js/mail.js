/**
 * Created by Administrator on 2017/6/27.
 */
//获取图片消息
function getMessage(tmp,pid,username,username1) {
    var dom = $(tmp).parent().parent().next();
    if(dom.css("display") == "block"){
        $(tmp).parent().parent().next().children().filter(".message").remove();
        $(tmp).parent().parent().next().hide(500);
    }else{
        $.ajax({
            type:'post',
            url: "/SlowTravel/travels/pictureMessage",
            dataType: "json",
            data: 'pid='+pid,
            success:function (data) {
                data = eval("("+data+")");
                data = eval(data.options);
                for(var i = data.length-1 ;i>=0;i--){
                    var obj = null;
                    if(username == ""||username == null||username!=username1){
                        obj = $('<div class="message"> <div style="width: 100%"><div class="message_left"> <a href="#" style="color: #333;"> <img src="/SlowTravel'+data[i].photo+'" class="left_photo">'+data[i].username+'：'+check(data[i].recevi_username)+'</a> </div> <div class="message_right"> <p style="font-size: 10px"> '+data[i].content+'</p> </div> </div><div style="width: 100%"><div class="left_map_text_fn"><a onclick="addReplay(this,'+"'"+data[i].username+"'"+')" style="cursor: pointer" class="left_map_a">回复</a></div><div class="left_map_float">'+data[i].date+'</div></div></div>');
                    }else{
                        obj = $('<div class="message"> <div style="width: 100%"><div class="message_left"> <a href="#" style="color: #333;"> <img src="/SlowTravel'+data[i].photo+'" class="left_photo">'+data[i].username+'：'+check(data[i].recevi_username)+'</a> </div> <div class="message_right"> <p style="font-size: 10px"> '+data[i].content+'</p> </div> </div><div style="width: 100%"><div class="left_map_text_fn"><a onclick="addReplay(this,'+"'"+data[i].username+"'"+')" style="cursor: pointer" class="left_map_a">回复</a> <a onclick="removeMessage($(this).parent().parent().parent().parent().children(),'+"'"+data[i].id+"'"+','+pid+','+"'"+username+"'"+','+"'"+username1+"'"+')" style="cursor: pointer" class="left_map_a">删除</a> </div><div class="left_map_float">'+data[i].date+'</div></div></div>');
                    }
                    $(tmp).parent().parent().next().children().filter(".message_hr").after(obj);
                }
            }
        });
        $(tmp).parent().parent().next().show(500);
    }
}

//回复消息
function sendMessage(tmp,p_id,username,username1) {
    $.ajax({
        type:'post',
        url: "/SlowTravel/travels/sendMessage",
        dataType: "json",
        data: 'username='+username+'&pid='+p_id+'&content='+$(tmp).prev().val(),
        success:function (data) {
            $(tmp).parent().children().filter(".message").remove();
            $(tmp).prev().val("");
            data = eval("("+data+")");
            data = eval(data.options);
            for(var i = data.length-1 ;i>=0;i--){
                var obj = null;
                if(username == ""||username == null||username!=username1){
                    obj = $('<div class="message"> <div style="width: 100%"><div class="message_left"> <a href="#" style="color: #333;"> <img src="/SlowTravel'+data[i].photo+'" class="left_photo">'+data[i].username+'：'+check(data[i].recevi_username)+'</a> </div> <div class="message_right"> <p style="font-size: 10px"> '+data[i].content+'</p> </div> </div><div style="width: 100%"><div class="left_map_text_fn"><a onclick="addReplay(this,'+"'"+data[i].username+"'"+')" style="cursor: pointer" class="left_map_a">回复</a></div><div class="left_map_float">'+data[i].date+'</div></div></div>');
                }else{
                    obj = $('<div class="message"> <div style="width: 100%"><div class="message_left"> <a href="#" style="color: #333;"> <img src="/SlowTravel'+data[i].photo+'" class="left_photo">'+data[i].username+'：'+check(data[i].recevi_username)+'</a> </div> <div class="message_right"> <p style="font-size: 10px"> '+data[i].content+'</p> </div> </div><div style="width: 100%"><div class="left_map_text_fn"><a onclick="addReplay(this,'+"'"+data[i].username+"'"+')" style="cursor: pointer" class="left_map_a">回复</a> <a onclick="removeMessage($(this).parent().parent().parent().parent().children(),'+"'"+data[i].id+"'"+','+p_id+','+"'"+username+"'"+','+"'"+username1+"'"+')" style="cursor: pointer" class="left_map_a">删除</a> </div><div class="left_map_float">'+data[i].date+'</div></div></div>');
                }
                $(tmp).next().after(obj);
            }
        }
    });
}

//删除消息
function removeMessage(tmp,id,pid,username,username1) {
    if(confirm("是否删除")){
        $.ajax({
            type:'post',
            url: "/SlowTravel/travels/removeMessage",
            dataType: "json",
            data: 'id='+id+'&pid='+pid,
            success:function (data) {
                tmp.filter(".message").remove();
                data = eval("("+data+")");
                data = eval(data.options);
                for(var i = data.length-1 ;i>=0;i--){
                    var obj = null;
                    if(username == ""||username == null||username!=username1){
                        obj = $('<div class="message"> <div style="width: 100%"><div class="message_left"> <a href="#" style="color: #333;"> <img src="/SlowTravel'+data[i].photo+'" class="left_photo">'+data[i].username+'：'+check(data[i].recevi_username)+'</a> </div> <div class="message_right"> <p style="font-size: 10px"> '+data[i].content+'</p> </div> </div><div style="width: 100%"><div class="left_map_text_fn"><a onclick="addReplay(this,'+"'"+data[i].username+"'"+')" style="cursor: pointer" class="left_map_a">回复</a></div><div class="left_map_float">'+data[i].date+'</div></div></div>');
                    }else{
                        obj = $('<div class="message"> <div style="width: 100%"><div class="message_left"> <a href="#" style="color: #333;"> <img src="/SlowTravel'+data[i].photo+'" class="left_photo">'+data[i].username+'：'+check(data[i].recevi_username)+'</a> </div> <div class="message_right"> <p style="font-size: 10px"> '+data[i].content+'</p> </div> </div><div style="width: 100%"><div class="left_map_text_fn"><a onclick="addReplay(this,'+"'"+data[i].username+"'"+')" style="cursor: pointer" class="left_map_a">回复</a> <a onclick="removeMessage($(this).parent().parent().parent().parent().children(),'+"'"+data[i].id+"'"+','+pid+','+"'"+username+"'"+','+"'"+username1+"'"+')" style="cursor: pointer" class="left_map_a">删除</a> </div><div class="left_map_float">'+data[i].date+'</div></div></div>');
                    }
                    tmp.filter(".message_hr").after(obj);
                }
            }
        });
    }
}
//喜欢数
function likeCount(tmp,pid,user_id) {
    $.ajax({
        type:'post',
        url: "/SlowTravel/like/findLikeCount",
        dataType:'html',
        data: 'pid='+pid+'&user_id='+user_id,
        success:function (data) {
            var str =data.split(":",2);
            if(str[1] === "true"){
                $(tmp).html("喜欢("+str[0]+")");
            }else{
                $(tmp).html("喜欢("+str[0]+")");
            }
        }
    });
}

//检查用户名是否为回复用户名
function check(username) {
    if(username!=null&&username!=""){
        return "回复"+username+"：";
    }else{
        return "";
    }
}

//添加回复人
function addReplay(tmp,username) {
    $(tmp).parent().parent().parent().parent().children().filter(".message_input").val("回复   "+username+"：");
}

$(document).ready(function () {
    //实例化map
    var map = new BMap.Map("allmap");
    map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
    map.addControl(new BMap.MapTypeControl());
    map.setCurrentCity("北京");
    map.enableScrollWheelZoom(true);

    map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
    map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用

    map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
    map.addControl(new BMap.OverviewMapControl()); //添加默认缩略地图控件
    /*  map.addControl(new BMap.OverviewMapControl({ isOpen: true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT }));*/   //右下角，打开

    // 构建一个查询
    var localSearch = new BMap.LocalSearch(map);
    localSearch.enableAutoViewport();//允许自动调节窗体大小
    /**
     * 根据内容获取经纬度坐标值
     */
    function searchByStationName() {
        map.clearOverlays();//清空原来的标注
        var keyword = document.getElementById("inp").value;
        localSearch.setSearchCompleteCallback(function (searchResult) {
            var poi = searchResult.getPoi(0);
            if (poi != null) {
                //poi.point.lng-- 经度   poi.point.lat --纬度
                var code = poi.point.lng + "," + poi.point.lat;
                map.centerAndZoom(poi.point, 13);
                var marker = new BMap.Marker(new BMap.Point(poi.point.lng, poi.point.lat));  // 创建标注，为要查询的地址对应的经纬度
                map.addOverlay(marker);
                var content = document.getElementById("inp").value + "<br/><br/>经度：" + poi.point.lng + "<br/>纬度：" + poi.point.lat;
                var infoWindow = new BMap.InfoWindow("<p style='font-size:14px;'>" + content + "</p>");
                marker.addEventListener("click", function () {
                    this.openInfoWindow(infoWindow);
                });
                // marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画 });

                show(code, document.getElementById("inp").value);
            } else {
                document.getElementById("span").innerHTML = "检测不到坐标点"
            }
        });
        localSearch.search(keyword);
    }

    /**
     * 获取map1的经纬度在map2中显示地址和标注点
     * code --map1的经纬度
     * address--map1中的中文地址
     * @type {BMap.Map}
     */
    var map2 = new BMap.Map("showmap");
    function show(code, address) {
        //map2.clearOverlays();//清空原来的标注
        var codestr = code.split(",");
        var points = new BMap.Point(codestr[0].toString().trim(), codestr[1].toString().trim());
        map2.centerAndZoom(points, 11);
        map2.addControl(new BMap.MapTypeControl());
        map2.setCurrentCity(address);
        map2.enableScrollWheelZoom(true);

        map2.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
        map2.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用

        map2.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
        map2.addControl(new BMap.OverviewMapControl()); //添加默认缩略地图控件

        var localSearch = new BMap.LocalSearch(map2);
        localSearch.enableAutoViewport();//允许自动调节窗体大小

        var marker = new BMap.Marker(new BMap.Point(codestr[0].toString().trim(), codestr[1].toString().trim()));  // 创建标注，为要查询的地址对应的经纬度
        map2.addOverlay(marker);
        var content = address + "<br/><br/>经度：" + codestr[0].toString().trim() + "<br/>纬度：" +codestr[1].toString().trim();
        var infoWindow = new BMap.InfoWindow("<p style='font-size:14px;'>" + content + "</p>");
        marker.addEventListener("click", function () {
            this.openInfoWindow(infoWindow);
        });

    }
    searchByStationName();
});