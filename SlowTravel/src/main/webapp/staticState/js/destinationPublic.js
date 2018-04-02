/**
 * Created by duyuxiang on 2017/6/27.
 */


var imglimit=20;
var setlimit=3;
// 图片懒加载
function LoadMore(destid) {
    imglimit+=20;

    $.ajax({
        type:'post',
        url:'/dest/destImgAjax',
        data:"limit="+imglimit+"&destId="+destid,
        dataType:"json",
        success:function (data) {
            data = eval("("+data+")");
            data = eval(data.destImgs);
            if(data.length!=0){
                for(var i=0;i<data.length;i++) {
                    var obj = $('<div class="imgModel"><img class="desImg" src="/staticState/img/' + data[i].url + '"/> <p class="desImgLike"><span class="glyphicon glyphicon-heart desImgIcon"> </span> <span class="desImgNum">' + data[i].praise + '</span></p> </div>');
                    $(".imgModel").last().after(obj);

                }
            }
            if(data.length==0){
              $("#loads").html("没有更多图片");

            }else {
                var ifma = parent.document.getElementById("hmp");
                ifma.style.height = ifma.offsetHeight + 700 + "px";
            }
        }


        }
    );

}


function setLoads(type,destId,limit) {

    setlimit+=6;

    $.ajax({
            type:'post',
            url:'/dest/destSetA',
            data:"limit="+setlimit+"&destId="+destId+"&type="+type,
            dataType:"json",
            success:function (data) {
                data = eval("("+data+")");
                data = eval(data.destSets);
                if(data.length!=0){

                    for(var i=0;i<data.length;i++) {
                        var obj = $('<div class="desSetModel"> <div class="desSetImgDiv">' +
                            ' <img class="desSetImg" src="/staticState/img/'+data[i].url+'"/>' +
                            ' <h3 class="desSetName">'+data[i].place+'</h3> </div> <div class="desSetInfos"> ' +
                            '<div class="desSetInfo">去过<span>'+data[i].go_number+' </span></div>' +
                            ' <div  class="desSetInfo destts">想去 <span>'+data[i].want_number+'' +
                            '</span></div> </div> </div>');
                        $(".desSetModel").last().after(obj);

                    }
                }

                if(data.length==0){
                    $("#setLoad").html("没有更多图片");

                }else {
                    var ifma = parent.document.getElementById("hmp");
                    ifma.style.height = ifma.offsetHeight + 500 + "px";

                }
            }


        }
    );

}



